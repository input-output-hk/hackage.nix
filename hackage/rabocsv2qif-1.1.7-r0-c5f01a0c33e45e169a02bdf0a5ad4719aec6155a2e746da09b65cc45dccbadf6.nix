{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "rabocsv2qif"; version = "1.1.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "sander.venema@gmail.com";
      author = "Sander Venema";
      homepage = "";
      url = "";
      synopsis = "A library and program to create QIF files from Rabobank CSV exports.";
      description = "The rabocsv2qif package exposes a library, Rabobank, and an\nexecutable, rabocsv2qif. With the executable you can quickly\ncreate a timestamped QIF file from a Rabobank CSV file with\ntransactions. The library exposes a method, toQif, that can be\nused to create QIF data in code. It simply takes a String and\nreturns a String.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
      exes = {
        "rabocsv2qif" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }