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
      specVersion = "0";
      identifier = { name = "quickcheck-poly"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "";
      url = "";
      synopsis = "Automating QuickCheck for polymorphic and overlaoded properties";
      description = "Automating QuickCheck for polymorphic and overlaoded properties  in a small world of types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          ];
        buildable = true;
        };
      };
    }