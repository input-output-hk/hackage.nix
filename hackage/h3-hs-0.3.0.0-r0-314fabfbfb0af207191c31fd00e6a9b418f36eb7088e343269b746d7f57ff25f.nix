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
      specVersion = "3.0";
      identifier = { name = "h3-hs"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024-2026 Justin Smith";
      maintainer = "jvstinian@gmail.com";
      author = "Justin Smith";
      homepage = "https://github.com/jvstinian/h3-hs";
      url = "";
      synopsis = "A Haskell binding for H3";
      description = "This package provides bindings to the \n[H3 C API v4](https://h3geo.org/docs/api/indexing).  \nH3 is a geospatial indexing system that partitions the world \ninto hexagonal cells. \n\nFor users with experience with bindings for other languages, \nwe recommend reviewing the project README, as we have \nincluded notes for using the methods provided in this package. \nIn particular, as we bind to the C methods with few adjustments \nto inputs and outputs beyond data marshalling, \nthere will be some differences for those familiar with the \npython (and likely other) bindings, e.g. the methods \nprovided in this package expect the latitude and longitude \nto be in radians rather than degrees. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."h3" or (errorHandler.sysDepError "h3")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "h3-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h3-hs" or (errorHandler.buildDepError "h3-hs"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }