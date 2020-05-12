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
      identifier = { name = "symbols"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019 Csongor Kiss";
      maintainer = "kiss.csongor.kiss@gmail.com";
      author = "Csongor Kiss";
      homepage = "";
      url = "";
      synopsis = "Symbol manipulation";
      description = "Utilities for manipulating type-level strings natively.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }