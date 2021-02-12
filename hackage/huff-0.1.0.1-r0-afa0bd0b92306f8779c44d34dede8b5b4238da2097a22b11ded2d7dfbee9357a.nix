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
      identifier = { name = "huff"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awesomelyawesome@gmail.com";
      author = "Trevor Elliott";
      homepage = "https://github.com/elliottt/huff";
      url = "";
      synopsis = "A fast-foward-based planner";
      description = "An implementation of the fast-forward planner, as a quasi-quoter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alex-tools" or (errorHandler.buildDepError "alex-tools"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
        buildable = true;
        };
      exes = {
        "blocksWorld" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."huff" or (errorHandler.buildDepError "huff"))
            ];
          buildable = true;
          };
        };
      };
    }