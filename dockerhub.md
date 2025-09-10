## 1️⃣ Login to Docker Hub 

```bash 
docker login -u <username>
```

## 2️⃣ Tag Your Image

```bash 
docker tag <local_image:tag> <username>/<repository_name>:<tag>
```

## 3️⃣ Push Image to Docker Hub
```bash 
docker push <username>/<repository_name>:<tag>
```

## 4️⃣ Pull Image from Docker Hub (any system)
```bash
docker pull <username>/<repository_name>:<tag>
```

## 🔑 Notes

✅ Ensure your repository on Docker Hub is public if you want others to access it.

🔒 For private repositories, users must run docker login before pulling.

🌍 Use meaningful repository names so your image is discoverable.

