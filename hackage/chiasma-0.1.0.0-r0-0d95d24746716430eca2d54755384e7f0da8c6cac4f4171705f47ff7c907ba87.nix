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
      identifier = { name = "chiasma"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/chiasma-hs#readme";
      url = "";
      synopsis = "tmux api";
      description = "Please see the README on GitHub at <https://github.com/tek/chiasma-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."posix-pty" or (errorHandler.buildDepError "posix-pty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "chiasma-unit" = {
          depends = [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chiasma" or (errorHandler.buildDepError "chiasma"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."posix-pty" or (errorHandler.buildDepError "posix-pty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }