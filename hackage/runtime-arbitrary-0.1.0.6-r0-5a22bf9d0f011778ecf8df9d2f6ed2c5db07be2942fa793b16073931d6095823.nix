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
      identifier = { name = "runtime-arbitrary"; version = "0.1.0.6"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "chriswarbo@gmail.com";
      author = "Chris Warburton";
      homepage = "http://chriswarbo.net/projects/repos/runtime-arbitrary.html";
      url = "";
      synopsis = "Runtime generation of Arbitrary values";
      description = "Runtime generation of Arbitrary values";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ifcxt" or (errorHandler.buildDepError "ifcxt"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }