{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gender";
          version = "0.1.1.0";
        };
        license = "LGPL-2.1-only";
        copyright = "Copyright (c) 2013, Kranium Gikos Mendoza\nCopyright (c) 2007-2008, Jörg Michael";
        maintainer = "Kranium Gikos Mendoza <kranium@gikos.net>";
        author = "Kranium Gikos Mendoza <kranium@gikos.net>";
        homepage = "https://github.com/womfoo/gender";
        url = "";
        synopsis = "Identify a persons gender by their first name";
        description = "This is a Haskell port of Jörg Michael's gender.c/nam_dict gender identification library.";
        buildType = "Simple";
      };
      components = {
        "gender" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
          ];
        };
        exes = {
          "gender" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.text
            ];
          };
        };
      };
    }