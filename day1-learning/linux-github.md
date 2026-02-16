Connecting AWS Linux to GitHub (Step-by-Step)

## Objective

This section documents how I connected my AWS Linux server to GitHub using SSH and pushed my first project.

---

## Step 1 — Generate SSH Key on Linux

I created a secure SSH key to authenticate my Linux server with GitHub.

```
ssh-keygen -t ed25519 -C "my-email@gmail.com"
```

Then I pressed **Enter** to save in the default location.

This generated:

```
~/.ssh/id_ed25519
~/.ssh/id_ed25519.pub
```

---

## Step 2 — Copy Public SSH Key

```
cat ~/.ssh/id_ed25519.pub
```

I copied the output and added it to GitHub under:

Settings → SSH and GPG keys → New SSH key

---

## Step 3 — Test GitHub Connection

```
ssh -T git@github.com
```

Successful authentication confirmed the connection.

---

## Step 4 — Create Project Folder

```
mkdir linux-learning-lab
cd linux-learning-lab
```

---

## Step 5 — Initialize Git Repository

```
git init
```

This created a hidden `.git` folder and turned the directory into a Git project.

---

## Step 6 — Create README File

```
nano README.md
```

I added project notes and saved the file.

---

## Step 7 — Commit Files

```
git add .
git commit -m "Initial commit"
```

This saved changes locally.

---

## Step 8 — Connect to GitHub Repository

```
git remote add origin git@github.com:USERNAME/linux-practice.git
```

Verify connection:

```
git remote -v
```

---

## Step 9 — Push to GitHub

```
git branch -M main
git push -u origin main
```

After entering the SSH passphrase, the project was successfully uploaded.
