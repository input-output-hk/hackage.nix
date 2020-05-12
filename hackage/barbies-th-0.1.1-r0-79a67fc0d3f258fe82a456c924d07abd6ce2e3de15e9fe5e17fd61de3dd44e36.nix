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
      specVersion = "2.4";
      identifier = { name = "barbies-th"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "";
      url = "";
      synopsis = "Create strippable HKD via TH";
      description = "Please see Data.Barbie.TH";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          ];
        buildable = true;
        };
      tests = {
        "th" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
            (hsPkgs."barbies-th" or (errorHandler.buildDepError "barbies-th"))
            ];
          buildable = true;
          };
        };
      };
    }