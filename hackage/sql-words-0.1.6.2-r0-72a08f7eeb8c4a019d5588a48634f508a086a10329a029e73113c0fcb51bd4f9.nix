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
      identifier = { name = "sql-words"; version = "0.1.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "SQL keywords data constructors into OverloadedString";
      description = "This package contiains SQL keywords constructors defined as\nOverloadedString literals and helper functions to concate these.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "monoids" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."sql-words" or (errorHandler.buildDepError "sql-words"))
            ];
          buildable = true;
          };
        };
      };
    }