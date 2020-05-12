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
    flags = { dump-core = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "enumerate"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides\n\n* (1) a typeclass for enumerating all values in a finite type,\n* (2) a generic instance for automatic deriving, and\n* (3) helpers that reify functions (partial or total, monadic or pure)\ninto a Map.\n\nsee the \"Enumerable\" module for extensive documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."spiros" or (errorHandler.buildDepError "spiros"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
        buildable = true;
        };
      exes = {
        "example-enumerate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enumerate" or (errorHandler.buildDepError "enumerate"))
            ];
          buildable = true;
          };
        };
      };
    }