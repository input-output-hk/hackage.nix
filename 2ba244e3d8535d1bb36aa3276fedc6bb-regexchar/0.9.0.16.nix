{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
      threaded = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regexchar";
          version = "0.9.0.16";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2010-2015 Dr. Alistair Ward";
        maintainer = "mailto:regexchar@functionalley.eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu/RegExChar/regExChar.html";
        url = "";
        synopsis = "A POSIX, extended regex-engine.";
        description = "Provides a POSIX, extended regex-engine, specialised from the underlying /polymorphic/ package /regexdot/, to merely process the traditional character-lists.";
        buildType = "Simple";
      };
      components = {
        regexchar = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.parsec
            hsPkgs.regex-base
            hsPkgs.regexdot
            hsPkgs.toolshed
          ];
        };
        exes = {
          grecce = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.data-default
              hsPkgs.parallel
              hsPkgs.regexchar
              hsPkgs.regex-base
              hsPkgs.regex-posix
              hsPkgs.regexdot
              hsPkgs.toolshed
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.regexchar
              hsPkgs.regexdot
              hsPkgs.toolshed
            ];
          };
        };
      };
    }