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
      identifier = { name = "hint"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "Daniel Gorin";
      homepage = "http://hub.darcs.net/jcpetruzza/hint";
      url = "";
      synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
      description = "This library defines an @Interpreter@ monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is\nthread-safe and type-safe (even the coercion of expressions to\nvalues).\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.8"
          then [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }