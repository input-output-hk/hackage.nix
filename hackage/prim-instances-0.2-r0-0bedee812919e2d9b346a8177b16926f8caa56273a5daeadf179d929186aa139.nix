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
      specVersion = "2.2";
      identifier = { name = "prim-instances"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/prim-instances.git";
      url = "";
      synopsis = "Prim typeclass instances";
      description = "orphan instances for primitive's 'Prim' typeclass.\nTypes which abstract over a single primitive type\n(i.e. are well-aligned) have trivially lawful and\nsometimes useful instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prim-instances" or (errorHandler.buildDepError "prim-instances"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }