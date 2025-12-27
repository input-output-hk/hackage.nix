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
      identifier = {
        name = "abstractly-keyed-implicits";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2025 Shea Levy";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/shlevy/tree/master/abstractly-keyed-implicits";
      url = "";
      synopsis = "Manage the implicit parameter namespace dynamically at compile time.";
      description = "Manage the implicit parameter namespace dynamically at compile time.\n\nThis is an implementation of [GHC proposal 737](https://github.com/ghc-proposals/ghc-proposals/pull/737).\nRelative to that proposal, this suffers from the following (likely hypothetical) limitations:\n\n  * It may break if future GHC versions change the implementation of implicit parameters\n  * It doesn't mandate that 'bindImplicit' and 'implicitParameter' be fully applied,\n    nor guarantee that they don't impose additional runtime cost.\n  * It uses some auxiliary internal type-level machinery that can't be hidden.\n  * It is not inferred as safe Haskell (though it is safe).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }