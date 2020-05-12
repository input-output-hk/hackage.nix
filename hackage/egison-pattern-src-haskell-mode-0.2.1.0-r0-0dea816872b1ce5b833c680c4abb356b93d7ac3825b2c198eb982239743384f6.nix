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
      specVersion = "2.0";
      identifier = {
        name = "egison-pattern-src-haskell-mode";
        version = "0.2.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright 2020 coord_e";
      maintainer = "coord_e <me@coord-e.com>, Satoshi Egi <egi@egison.org>";
      author = "coord_e";
      homepage = "https://github.com/egison/egison-pattern-src#readme";
      url = "";
      synopsis = "Parser and pretty printer for Egison pattern expressions in Haskell source code";
      description = "@egison-pattern-src-haskell-mode@ provides a parser and pretty printer for @egison-pattern-src@ to use it in Haskell source code.\nSee <https://github.com/egison/egison-pattern-src> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."egison-pattern-src" or (errorHandler.buildDepError "egison-pattern-src"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."egison-pattern-src" or (errorHandler.buildDepError "egison-pattern-src"))
            (hsPkgs."egison-pattern-src-haskell-mode" or (errorHandler.buildDepError "egison-pattern-src-haskell-mode"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }