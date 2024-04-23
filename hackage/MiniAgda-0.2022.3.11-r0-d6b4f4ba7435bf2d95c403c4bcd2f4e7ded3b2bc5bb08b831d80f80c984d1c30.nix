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
      identifier = { name = "MiniAgda"; version = "0.2022.3.11"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@cse.gu.se>";
      author = "Andreas Abel and Karl Mehltretter";
      homepage = "http://www.cse.chalmers.se/~abela/miniagda/";
      url = "";
      synopsis = "A toy dependently typed programming language with type-based termination.";
      description = "MiniAgda is a tiny dependently-typed programming language in the style\nof Agda. It serves as a laboratory to test potential additions to the\nlanguage and type system of Agda. MiniAgda's termination checker is a\nfusion of sized types and size-change termination and supports\ncoinduction. Equality incorporates eta-expansion at record and\nsingleton types. Function arguments can be declared as static; such\narguments are discarded during equality checking and compilation.\nRecent features include bounded size quantification and destructor\npatterns for a more general handling of coinduction.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "miniagda" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.goldplate.components.exes.goldplate or (pkgs.buildPackages.goldplate or (errorHandler.buildToolDepError "goldplate:goldplate")))
            (hsPkgs.buildPackages.MiniAgda.components.exes.miniagda or (pkgs.buildPackages.miniagda or (errorHandler.buildToolDepError "MiniAgda:miniagda")))
          ];
          buildable = true;
        };
      };
    };
  }