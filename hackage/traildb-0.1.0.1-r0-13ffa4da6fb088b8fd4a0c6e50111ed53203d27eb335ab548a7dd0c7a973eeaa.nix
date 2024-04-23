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
    flags = { use-ioref = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "traildb"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "AdRoll Inc (c) 2016";
      maintainer = "mikko.juola@adroll.com";
      author = "Mikko Juola";
      homepage = "";
      url = "";
      synopsis = "TrailDB bindings for Haskell";
      description = "Check out README.md for information on these bindings.\n\nTrailDB project home page is at traildb.io";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."traildb" or (errorHandler.sysDepError "traildb"))
          (pkgs."Judy" or (errorHandler.sysDepError "Judy"))
          (pkgs."cmph" or (errorHandler.sysDepError "cmph"))
        ];
        buildable = true;
      };
      benchmarks = {
        "bench-traildb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."traildb" or (errorHandler.buildDepError "traildb"))
          ];
          buildable = true;
        };
      };
    };
  }