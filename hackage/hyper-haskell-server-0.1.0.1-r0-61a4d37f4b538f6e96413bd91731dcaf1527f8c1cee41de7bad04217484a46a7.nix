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
      identifier = { name = "hyper-haskell-server"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Heinrich Apfelmus 2016";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "";
      url = "";
      synopsis = "Server back-end for the HyperHaskell graphical Haskell interpreter";
      description = "This package is part of the /HyperHaskell/ project and provides\nthe server back-end.\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hyper-haskell-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hyper" or (errorHandler.buildDepError "hyper"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          ];
          buildable = true;
        };
      };
    };
  }