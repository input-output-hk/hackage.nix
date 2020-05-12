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
      specVersion = "1.6";
      identifier = { name = "hecc"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2009-2013";
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
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."hF2" or (errorHandler.buildDepError "hF2"))
          ];
        buildable = true;
        };
      };
    }