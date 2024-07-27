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
      identifier = { name = "heap-console"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 TheMatten";
      maintainer = "matten@tuta.io";
      author = "TheMatten";
      homepage = "https://gitlab.com/thematten/heap-console";
      url = "";
      synopsis = "interactively inspect Haskell values at runtime";
      description = "See the README.md file in the project repository.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."show-combinators" or (errorHandler.buildDepError "show-combinators"))
        ];
        buildable = true;
      };
      tests = {
        "heap-console-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heap-console" or (errorHandler.buildDepError "heap-console"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }