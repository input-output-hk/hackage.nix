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
      identifier = { name = "rank1dynamic"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP, Tweag I/O Limited";
      maintainer = "The Distributed Haskell team";
      author = "Edsko de Vries";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "Like Data.Dynamic/Data.Typeable but with support for rank-1 polymorphic types";
      description = "\"Data.Typeable\" and \"Data.Dynamic\" only support monomorphic types.\nIn this package we provide similar functionality but with\nsupport for rank-1 polymorphic types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      tests = {
        "TestRank1Dynamic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }