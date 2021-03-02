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
      specVersion = "1.2";
      identifier = { name = "hint"; version = "0.3.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "Daniel Gorin";
      homepage = "http://projects.haskell.org/hint";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "This library defines an @Interpreter@ monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is\nthread-safe and type-safe (even the coercion of expressions to\nvalues).\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI. Works with GHC 6.10.x and 6.8.x\n(this version was not tested with GHC 6.6).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.8"
          then [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."ghc-mtl" or (errorHandler.buildDepError "ghc-mtl"))
              (hsPkgs."ghc-mtl" or (errorHandler.buildDepError "ghc-mtl"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ])
          else [
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }