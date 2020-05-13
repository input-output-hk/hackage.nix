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
      specVersion = "1.9.2";
      identifier = { name = "hinter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "None";
      author = "The Hint Authors";
      homepage = "";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "Fork of <https://hackage.haskell.org/package/hint hint>\n\nThis library defines an Interpreter monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is thread-safe\nand type-safe (even the coercion of expressions to values).\nIt is, essentially, a huge subset of the GHC API wrapped in a simpler\nAPI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "8.4" && (compiler.version).lt "8.6")) (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hinter" or (errorHandler.buildDepError "hinter"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }