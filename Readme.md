# Pardus Installer
17g live installer fork for pardus.

## Packaging
1. Fetch source
2. Run this commands:
```shell
mk-build-deps -i
dpkg-buildpackage -b
```

## Testing without root
```shell
cd live-installer
python3 main.py --test
```

## Expert mode
Expert mode is dangerous so disabled by default. Expert mode can help you for advanced installating and debugging.
```shell
cd live-installer
python3 main.py --expert
```

## Configuration:
**custom** directory has 1 file and 2 directories. 

Branding provide installer icon and and slideshow images. configs provide 17g config.

**live-installer.desktop** file is pardus-installer launcher.


