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
      identifier = { name = "jbi"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Just Build It - a \"do what I mean\" abstraction for Haskell build tools";
      description = "If you work with multiple Haskell projects, it can be annoying have to\nchange gears mentally as to which set of tooling you have to work with\nfor each one (configuring your editor, or even just the command-line).\n\n@jbi@ aims to provide a common interface to the various Haskell build\ntools available and automatically determine which one you should use,\nso you can get back to hacking on your code, rather than on your\nenvironment.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        buildable = true;
      };
      exes = {
        "jbi" = {
          depends = [
            (hsPkgs."jbi" or (errorHandler.buildDepError "jbi"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }