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
      specVersion = "3.6";
      identifier = { name = "scip"; version = "0.9.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "code-intel@sourcegraph.com";
      author = "SCIP Maintainers";
      homepage = "https://github.com/scip-code/scip";
      url = "";
      synopsis = "Haskell bindings for the SCIP code intelligence protocol";
      description = "SCIP (pronounced \"skip\") is a language-agnostic protocol for\nindexing source code, used to power code navigation functionality\nsuch as go-to-definition, find-references, and find-implementations.\n.\nThis package provides Haskell bindings generated from the SCIP\nprotobuf schema via @proto-lens@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }