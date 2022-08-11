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
    flags = { ci = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "podenv"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2021 Red Hat";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan Cacqueray";
      homepage = "https://github.com/podenv/podenv#readme";
      url = "";
      synopsis = "A container wrapper";
      description = "Podenv provides a declarative interface to manage containerized applications.\n.\nUsing rootless containers, podenv let you run applications seamlessly.\n.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
          (hsPkgs."lens-family-th" or (errorHandler.buildDepError "lens-family-th"))
          (hsPkgs."linux-capabilities" or (errorHandler.buildDepError "linux-capabilities"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-env" or (errorHandler.buildDepError "th-env"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      exes = {
        "podenv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."podenv" or (errorHandler.buildDepError "podenv"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."podenv" or (errorHandler.buildDepError "podenv"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }