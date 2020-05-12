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
      identifier = { name = "hecc"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2009-2012";
      maintainer = "Marcel Fourné (hecc@bitrot.dyndns.org)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "Elliptic Curve Cryptography for Haskell";
      description = "Pure math & algorithms for Elliptic Curve Cryptography in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }