# Pardus Installer
17g live instaler fork for pardus.

## Packaging
1. Fetch source
2. Run this commands:
```shell
dpkg-buildpackage -b
```

## Testing without root
```shell
cd live-installer
python3 main.py --test
```

## Configuration:
**custom** directory has 1 file and 2 directories. 

Branding provide installer icon and and slideshow images. configs provide 17g config.

**live-installer.desktop** file is pardus-installer launcher.


