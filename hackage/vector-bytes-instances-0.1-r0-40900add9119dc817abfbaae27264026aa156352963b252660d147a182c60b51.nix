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
      identifier = { name = "vector-bytes-instances"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "renzocarbonara¡gmail!com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/vector-bytes-instances";
      url = "";
      synopsis = "Serial (from the bytes package) for Vector (from the vector package)";
      description = "Serial (from the bytes package) for Vector (from the vector package)\n\nBased on the original BSD3-licensed work by Don Stewart in the\nvector-binary-instances library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector-bytes-instances" or (errorHandler.buildDepError "vector-bytes-instances"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }