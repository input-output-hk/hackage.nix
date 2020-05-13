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
      specVersion = "1.8";
      identifier = { name = "fixed-vector-binary"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary instances for fixed-vector";
      description = "Binary instances for fixed-vector";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
            (hsPkgs."fixed-vector-binary" or (errorHandler.buildDepError "fixed-vector-binary"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }