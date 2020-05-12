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
      identifier = {
        name = "equational-reasoning-induction";
        version = "0.6.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2013-2018";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Proof assistant for Haskell using DataKinds & PolyKinds";
      description = "A simple convenient library to write equational / preorder proof as in Agda. This package depends on @singletons@ and generates induction schemes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-extras" or (errorHandler.buildDepError "th-extras"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      };
    }