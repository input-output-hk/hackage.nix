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
      identifier = { name = "haskell-src-exts"; version = "1.19.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>, Roman Cheplyaka <roma@ro-che.info>";
      author = "Niklas Broberg";
      homepage = "https://github.com/haskell-suite/haskell-src-exts";
      url = "";
      synopsis = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
      description = "Haskell-Source with Extensions (HSE, haskell-src-exts)\nis a standalone parser for Haskell. In addition to\nstandard Haskell, all extensions implemented in GHC are supported.\n\nApart from these standard extensions,\nit also handles regular patterns as per the HaRP extension\nas well as HSX-style embedded XML syntax.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      };
    }