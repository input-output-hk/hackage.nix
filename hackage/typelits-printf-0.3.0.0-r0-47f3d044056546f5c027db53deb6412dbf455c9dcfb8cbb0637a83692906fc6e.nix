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
      identifier = { name = "typelits-printf"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2019";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/typelits-printf#readme";
      url = "";
      synopsis = "Type-safe printf from parsing GHC TypeLits Symbol";
      description = "An extensible and type-safe printf from parsing GHC TypeLits Symbol\nliterals, matching the semantics of 'P.printf' from \"Text.Printf\" in /base/.\nThe difference is that the variants here will always fail to compile if\ngiven arguments of the wrong type (or too many or too little arguments).\nMost of the variants also provide useful type feedback, telling you the type\nof arguments it expects and how many when queried with @:t@ or with typed\nholes.\n\nSee README and documentation of \"GHC.TypeLits.Printf\" for more information";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "typelits-printf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."typelits-printf" or (errorHandler.buildDepError "typelits-printf"))
          ];
          buildable = true;
        };
      };
    };
  }