{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-rpm";
          version = "0.6.0";
        };
        license = "GPL-3.0-only";
        copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>\n2012 Jens Petersen <petersen@fedoraproject.org>";
        maintainer = "Jens Petersen <juhp@community.haskell.org>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/juhp/cabal-rpm";
        url = "";
        synopsis = "RPM package creator for Haskell Cabal-based packages";
        description = "This package generates RPM spec files from Haskell Cabal packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal-rpm = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }