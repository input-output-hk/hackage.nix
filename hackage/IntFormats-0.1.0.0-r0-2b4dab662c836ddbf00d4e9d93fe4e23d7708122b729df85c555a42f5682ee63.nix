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
      specVersion = "1.10";
      identifier = { name = "IntFormats"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "Lyra Solomon 2019";
      maintainer = "Lyra Solomon <mailtoLyra@gmail.com>";
      author = "Lyra Solomon <mailtoLyra@gmail.com>";
      homepage = "https://github.com/LyraSolomon/IntFormats";
      url = "";
      synopsis = "Convert integers in various bases to and from strings";
      description = "Parse or show positive and negative intergers in decimal, hexadecimal, octal, and binary.\nWhen parsing numbers, the base is determined automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."IntFormats" or (errorHandler.buildDepError "IntFormats"))
            ];
          buildable = true;
          };
        };
      };
    }