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
      identifier = { name = "Transhare"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<haskell@list.mightyreason.com>";
      author = "Chris Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "A library to apply transformation to containers so as to maximize sharing of unchanged subcomponents.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }