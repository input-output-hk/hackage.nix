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
      identifier = { name = "lowlin"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Johannes Kropp 2020";
      maintainer = "jodak932@gmail.com";
      author = "Johannes Kropp";
      homepage = "";
      url = "";
      synopsis = "Low dimensional linear algebra";
      description = "\nLowlin is a library for linear algebra in vector spaces up to a dimension of 4. Ordinary Tuples can be used as vectors and nested tuples as matrices. The functionalities are similar to that of the linear package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "lowlin-test" = {
          depends = [
            (hsPkgs."lowlin" or (errorHandler.buildDepError "lowlin"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }