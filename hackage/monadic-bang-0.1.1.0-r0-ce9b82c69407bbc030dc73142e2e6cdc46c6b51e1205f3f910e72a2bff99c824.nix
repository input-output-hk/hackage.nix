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
      specVersion = "2.4";
      identifier = { name = "monadic-bang"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jakob.bruenker@gmail.com";
      author = "Jakob Brünker";
      homepage = "https://github.com/JakobBruenker/monadic-bang";
      url = "";
      synopsis = "GHC plugin to desugar ! into do-notation";
      description = "A plugin for GHC which takes expressions prefixed with a !\nand effectively takes them out of their monadic context, by\ncreating bind statements in the do-block surrounding the\nexpression. Inspired by Idris's !-notation. For more\ninformation, see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          ];
        buildable = true;
        };
      tests = {
        "monadic-bang-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."monadic-bang" or (errorHandler.buildDepError "monadic-bang"))
            ];
          buildable = true;
          };
        };
      };
    }