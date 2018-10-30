{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "cartel";
        version = "0.2.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
        ];
      };
    };
  }