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
      specVersion = "1.2";
      identifier = { name = "containers-benchmark"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fox@ucw.cz";
      author = "Milan Straka";
      homepage = "http://fox.auryn.cz/darcs/containers-benchmark/";
      url = "";
      synopsis = "Extensive benchmark suite for containers package.";
      description = "This package evaluates performance of a containers package\nfrom multiple perspectives.\n\nIt measures time and memory allocation of methods specialised\nto several types. It can also measure the size and memory\nallocation of GHC compiled with the containers package.\n\nThe containers package used can be both system-installed or\nany darcs repository.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }