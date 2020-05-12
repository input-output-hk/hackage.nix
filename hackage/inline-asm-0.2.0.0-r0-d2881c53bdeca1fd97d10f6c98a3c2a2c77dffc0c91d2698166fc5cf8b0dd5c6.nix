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
      identifier = { name = "inline-asm"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/inline-asm#readme";
      url = "";
      synopsis = "Inline some Assembly in ur Haskell!";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/inline-asm#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          ];
        buildable = true;
        };
      exes = {
        "inline-asm-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."inline-asm" or (errorHandler.buildDepError "inline-asm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      tests = {
        "inline-asm-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."inline-asm" or (errorHandler.buildDepError "inline-asm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      };
    }