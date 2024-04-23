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
      specVersion = "1.12";
      identifier = { name = "llvm-pretty"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awesomelyawesome@gmail.com";
      author = "Trevor Elliott";
      homepage = "";
      url = "";
      synopsis = "A pretty printing library inspired by the llvm binding.";
      description = "A pretty printing library that was inspired by the LLVM binding by Lennart\nAugustsson.  The library provides a monadic interface to a pretty printer,\nthat allows functions to be defined and called, generating the corresponding\nLLVM assemblly when run.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
        ];
        buildable = true;
      };
    };
  }