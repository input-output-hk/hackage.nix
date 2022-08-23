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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ersatz-toysat"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/ersatz-toysat";
      url = "";
      synopsis = "toysat driver as backend for ersatz";
      description = "toysat driver as backend for ersatz";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
          (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          ];
        buildable = true;
        };
      exes = {
        "ersatz-toysat-regexp-grid" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
            (hsPkgs."ersatz-toysat" or (errorHandler.buildDepError "ersatz-toysat"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim")));
          buildable = if flags.examples then true else false;
          };
        "ersatz-toysat-sudoku" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
            (hsPkgs."ersatz-toysat" or (errorHandler.buildDepError "ersatz-toysat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim")));
          buildable = if flags.examples then true else false;
          };
        };
      };
    }