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
      identifier = { name = "resource-registry"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2019-2023 Input Output Global Inc (IOG)\n2023-2024 INTERSECT";
      maintainer = "operations@iohk.io";
      author = "IOG Engineering Team";
      homepage = "";
      url = "";
      synopsis = "Track allocated resources";
      description = "When the scope of a @bracket@ doesn't enclose all uses of the resource, a\n'ResourceRegistry' can be used instead to capture the lifetime of those\nresources.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
        ];
        buildable = true;
      };
      tests = {
        "resource-registry-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.si-timers or (errorHandler.buildDepError "io-classes:si-timers"))
            (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
            (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quickcheck-state-machine".components.sublibs.no-vendored-treediff or (errorHandler.buildDepError "quickcheck-state-machine:no-vendored-treediff"))
            (hsPkgs."resource-registry" or (errorHandler.buildDepError "resource-registry"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tree-diff" or (errorHandler.buildDepError "tree-diff"))
          ];
          buildable = true;
        };
      };
    };
  }