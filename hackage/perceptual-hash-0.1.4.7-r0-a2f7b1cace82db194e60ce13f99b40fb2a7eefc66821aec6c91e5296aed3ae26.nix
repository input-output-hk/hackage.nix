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
    flags = {
      with-phash = false;
      disable-webp = false;
      disable-avif = false;
      llvm = false;
    };
    package = {
      specVersion = "2.0";
      identifier = { name = "perceptual-hash"; version = "0.1.4.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019-2021 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Find duplicate images";
      description = "Find similar images using perceptual hashes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
        ] ++ pkgs.lib.optional (!flags.disable-webp) (hsPkgs."webp" or (errorHandler.buildDepError "webp"))) ++ pkgs.lib.optional (!flags.disable-avif) (hsPkgs."avif" or (errorHandler.buildDepError "avif"));
        libs = pkgs.lib.optional (flags.with-phash) (pkgs."pHash" or (errorHandler.sysDepError "pHash"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
        ];
        buildable = true;
      };
      foreignlibs = {
        "hsphash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."perceptual-hash" or (errorHandler.buildDepError "perceptual-hash"))
          ];
          buildable = true;
        };
      };
      exes = {
        "phash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."perceptual-hash" or (errorHandler.buildDepError "perceptual-hash"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."par-traverse" or (errorHandler.buildDepError "par-traverse"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
      tests = {
        "perceptual-hash-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."perceptual-hash" or (errorHandler.buildDepError "perceptual-hash"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "phash-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."perceptual-hash" or (errorHandler.buildDepError "perceptual-hash"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
    };
  }