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
      identifier = { name = "equational-reasoning"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2013-2020";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Proof assistant for Haskell using DataKinds & PolyKinds";
      description = "A simple convenient library to write equational / preorder proof as in Agda.\nSince 0.6.0.0, this no longer depends on @singletons@ package, and the @Proof.Induction@ module goes to @equational-reasoning-induction@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          ];
        buildable = true;
        };
      };
    }