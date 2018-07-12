{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "cartel";
          version = "0.10.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/cartel";
        url = "";
        synopsis = "Specify your Cabal files in Haskell";
        description = "By specifying Cabal files in Haskell, you have the power\nof Haskell at your disposal to eliminate redundancies\nand to programatically populate various fields.\n\nSee the documentation in the \"Cartel\" module for details.";
        buildType = "Simple";
      };
      components = {
        "cartel" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
          ];
        };
      };
    }