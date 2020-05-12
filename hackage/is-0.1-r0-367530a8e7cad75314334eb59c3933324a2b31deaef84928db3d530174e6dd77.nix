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
      identifier = { name = "is"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "project-is@lopezjuan.com";
      author = "Víctor López Juan <victor@lopezjuan.com>";
      homepage = "";
      url = "";
      synopsis = "Pattern predicates using TH";
      description = "Generate predicates of type (t → Bool) from patterns or constructors of type t.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
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