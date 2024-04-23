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
      identifier = { name = "is"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "project-is@lopezjuan.com";
      author = "Víctor López Juan <victor@lopezjuan.com>";
      homepage = "";
      url = "";
      synopsis = "Generic pattern predicates";
      description = "Generate predicates of type (t → Bool) from constructors or patterns of type t.\nUses either Template Haskell or instances of Generic or Typeable.\nGenerating predicates from arbitrary patterns requires TH.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "8.2" && compiler.version.lt "8.3")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "8.0" && compiler.version.lt "8.1")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.10" && compiler.version.lt "7.11")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.8" && compiler.version.lt "7.9")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."is" or (errorHandler.buildDepError "is"))
          ];
          buildable = true;
        };
      };
    };
  }