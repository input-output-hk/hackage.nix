{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kdesrc-build-extra";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ivan.cukic@kde.org";
        author = "Ivan Čukić";
        homepage = "";
        url = "";
        synopsis = "Build profiles for kdesrc-build";
        description = "A tool that allows defining build profiles on top of the kdesrc-build system for building KDE packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          kdesrc-build-extra = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.cmdargs
              hsPkgs.process
              hsPkgs.MissingH
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }