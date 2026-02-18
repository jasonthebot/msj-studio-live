# msj-studio (Canonical Source + Publish Flow)

`msj-studio/index.html` is the **only source file** you should edit for studio UI/content changes.

## Canonical workflow (safe + predictable)

```bash
cd /home/jason/.openclaw/workspace/msj-studio
# edit index.html
./publish.sh "feat: update homepage sections"
```

That script handles the reliable path:
1. stages canonical files (`index.html`, `README.md`)
2. commits
3. pushes to `origin`
4. triggers Vercel auto-deploy

## Why this avoids confusion

- Do **not** edit `/home/jason/.openclaw/workspace/index.html` for msj-studio deploys.
- Deploy target is this repo: `jasonthebot/msj-studio-live`.
- If you want to check remote:

```bash
git remote -v
```

## First-time git auth hardening (reduce PAT friction)

Use GitHub CLI auth once, then push normally:

```bash
git config --global user.name "Jason"
git config --global user.email "jasonthebot0@gmail.com"
git config --global credential.helper store
gh auth login
```

If you prefer PAT over `gh auth login`, create a fine-grained token with repo access and use it as password when prompted.

## Quick troubleshooting

### `remote: Permission denied` / HTTP 403
- Confirm you are pushing to the right repo (`git remote -v`).
- Re-auth:
  ```bash
  gh auth status || gh auth login
  ```
- If cached bad creds exist:
  ```bash
  printf "protocol=https\nhost=github.com\n" | git credential reject
  ```

### `fatal: Authentication failed`
- Token expired/invalid. Re-run `gh auth login` or generate a new PAT.
- Ensure token has repository write access.

### `src refspec main does not match any`
- No commits yet on branch:
  ```bash
  git add index.html
  git commit -m "init"
  git push -u origin main
  ```

### Pushed but site didn't update
- Verify push landed on expected branch (`git log -1 --oneline`).
- Confirm Vercel project is linked to this repo + branch.
- Check Vercel deployment logs for build errors.
