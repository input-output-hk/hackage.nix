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
      specVersion = "1.12";
      identifier = { name = "rerefined"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/rerefined#readme";
      url = "";
      synopsis = "Refinement types, again";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."typeably" or (errorHandler.buildDepError "typeably"))
        ];
        buildable = true;
      };
    };
  }