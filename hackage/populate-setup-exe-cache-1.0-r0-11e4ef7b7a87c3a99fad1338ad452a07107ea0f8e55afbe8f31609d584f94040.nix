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
      specVersion = "1.8";
      identifier = { name = "populate-setup-exe-cache"; version = "1.0"; };
      license = "MIT";
      copyright = "Copyright © 2014 Miëtek Bak";
      maintainer = "Miëtek Bak <hello@mietek.io>";
      author = "Miëtek Bak <hello@mietek.io>";
      homepage = "https://github.com/mietek/populate-setup-exe-cache/";
      url = "";
      synopsis = "Empty Cabal package";
      description = "Empty Cabal package, intended to populate the Cabal @setup-exe-cache@, which is <https://github.com/valderman/haste-compiler/issues/257 required to bootstrap> the <http://haste-lang.org/ Haste compilation system>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }