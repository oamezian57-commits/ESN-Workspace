# DAWO-NixOS Enterprise


Een modulaire NixOS-distributie voor IT-beheerders, eindgebruikers en toekomstige enterprise deployment.


## Doel

DAWO-NixOS is ontworpen als centraal beheerde NixOS-omgeving waarmee meerdere typen laptops vanuit een Git-repository kunnen worden gebouwd en onderhouden.



## Huidige onderdelen 


- Flake-based configuratie
- Admin-laptop host
- User-laptop basis
- KDE Plasma dekstop
- Netwerkmodule
- Modulair adminprofiel
- CLI tools
- Networking tools
- Hardware tools
- Securtiy tools
- Git- en GitHub-workflow
- Changelog en licentie



## Projectstructuur 


```text

DAWO-NixOS/
|--- hosts/
|    |--- admin-laptop/
|    |--- user-laptop/
|--- modules/
|    |--- admin/
|    |--- desktop/
|    |--- network/
|--- profiles/
|--- docs/
|--- assets/ 
|--- flake.nix
|--- CHANGELOG.md
|--- LICENSE
|---README.md

