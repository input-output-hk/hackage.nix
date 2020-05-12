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
      identifier = { name = "privileged-concurrency"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shawjef3@msu.edu";
      author = "Jeff Shaw";
      homepage = "";
      url = "";
      synopsis = "Provides privilege separated versions of the concurrency primitives.";
      description = "Any MVar or other concurrency primitive can be read by or written to any function which recieves it as a value. This package provides read-only and write-only versions of Chan, MVar, TChan, TMVar, and TVar. Functions which use these versions receive permission to read, write, or both based on their type signatures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }