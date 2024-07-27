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
      identifier = { name = "GPipe-Core"; version = "0.2.3.1"; };
      license = "MIT";
      copyright = "Tobias Bexelius";
      maintainer = "Pippijn van Steenhoven";
      author = "Tobias Bexelius";
      homepage = "https://github.com/tobbebex/GPipe-Core#readme";
      url = "";
      synopsis = "Typesafe functional GPU graphics programming";
      description = "A typesafe API based on the conceptual model of OpenGL, but without the imperative state machine.\nAims to be as close to the raw OpenGL performance as possible, without compromising type safety or functional style.\nIncludes DSL for shaders to provide type safety even when crossing into that domain.\nUses OpenGL 4.5 core profile under the hood.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GPipe-Core" or (errorHandler.buildDepError "GPipe-Core"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GPipe-Core" or (errorHandler.buildDepError "GPipe-Core"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
      };
    };
  }