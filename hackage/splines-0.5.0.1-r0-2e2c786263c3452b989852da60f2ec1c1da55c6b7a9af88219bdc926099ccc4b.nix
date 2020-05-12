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
      specVersion = "1.9.2";
      identifier = { name = "splines"; version = "0.5.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "B-Splines, other splines, and NURBS.";
      description = "This is a fairly simple implementation of a\ngeneral-purpose spline library, just to get the code\nout there.  Its interface is still mildly unstable and\nmay change (hopefully not drastically) as new needs or\nbetter style ideas come up.  Patches, suggestions\nand/or feature requests are welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."polynomial" or (errorHandler.buildDepError "polynomial"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
        buildable = true;
        };
      tests = {
        "splines-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."polynomial" or (errorHandler.buildDepError "polynomial"))
            (hsPkgs."splines" or (errorHandler.buildDepError "splines"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "splines-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."polynomial" or (errorHandler.buildDepError "polynomial"))
            (hsPkgs."splines" or (errorHandler.buildDepError "splines"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }