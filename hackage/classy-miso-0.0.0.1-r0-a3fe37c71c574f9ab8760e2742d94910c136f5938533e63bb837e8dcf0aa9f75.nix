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
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "classy-miso"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Robert Fischer";
      maintainer = "smokejumperit+stack@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/Classy-Miso#README.md";
      url = "";
      synopsis = "Typeclass based support for Miso, the Tasty Web Framework for Haskell.";
      description = "Please see the README on Github at <https://github.com/RobertFischer/Classy-Miso#README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          (hsPkgs."rfc" or (errorHandler.buildDepError "rfc"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
        ] ++ pkgs.lib.optionals (compiler.isGhcjs && true) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
        ];
        buildable = true;
      };
      exes = {
        "classy-miso-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-miso" or (errorHandler.buildDepError "classy-miso"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."rfc" or (errorHandler.buildDepError "rfc"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ghcjs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-miso" or (errorHandler.buildDepError "classy-miso"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."rfc" or (errorHandler.buildDepError "rfc"))
          ];
          buildable = true;
        };
      };
    };
  }