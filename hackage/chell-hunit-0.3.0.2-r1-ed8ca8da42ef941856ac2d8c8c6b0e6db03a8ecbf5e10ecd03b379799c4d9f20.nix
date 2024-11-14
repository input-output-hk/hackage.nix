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
      specVersion = "3.0";
      identifier = { name = "chell-hunit"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/typeclasses/chell";
      url = "";
      synopsis = "HUnit support for Chell";
      description = "HUnit support for the Chell testing library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chell" or (errorHandler.buildDepError "chell"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
        ];
        buildable = true;
      };
    };
  }