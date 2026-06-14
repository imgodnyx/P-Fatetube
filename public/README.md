Place your Fatetube source logo image here and run the icon generator.

1. Add your master PNG image named `fatetube-source.png` to this folder.
2. From the project root run:

```bash
chmod +x scripts/generate-icons.sh
./scripts/generate-icons.sh public/fatetube-source.png
```

This will create the following files in `public/`:
- `fatetube-favicon-16x16.png`
- `fatetube-favicon-32x32.png`
- `fatetube-favicon-48x48.png`
- `fatetube-favicon.ico`
- `fatetube-apple-touch-icon.png`
- `fatetube-android-chrome-192x192.png`
- `fatetube-android-chrome-512x512.png`
- `fatetube-embed-preview.png`

If ImageMagick (`convert`) is not installed, install it first (e.g. `sudo apt install imagemagick`).

If you want me to add the provided image directly, upload `fatetube-source.png` to this folder and I'll generate icons for you.
