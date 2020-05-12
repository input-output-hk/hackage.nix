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
      identifier = { name = "clr-marshal"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Tim Matthews";
      maintainer = "tim.matthews7@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-marshal";
      url = "";
      synopsis = "Marshaling for the clr";
      description = "A common dependency for other clr packages, marshalling between Haskell & CLR data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clr-host" or (errorHandler.buildDepError "clr-host"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }