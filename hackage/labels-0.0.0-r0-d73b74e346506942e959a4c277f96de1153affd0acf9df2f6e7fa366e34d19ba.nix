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
      identifier = { name = "labels"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/labels#readme";
      url = "";
      synopsis = "Declare and access tuple fields with labels";
      description = "Declare and access tuple fields with labels.\nAn approach to anonymous records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }