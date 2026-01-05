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
      identifier = { name = "restman"; version = "0.7.1.1"; };
      license = "BSD-2-Clause";
      copyright = "Zac Slade or Boyd Stephen Smith Jr, 2024";
      maintainer = "krakrjak@gmail.com, boyd.stephen.smith.jr@gmail.com";
      author = "Zac Slade";
      homepage = "https://gitlab.com/krakrjak/restman#readme";
      url = "";
      synopsis = "Web request TUI program.";
      description = "Please see the README on GitLab at <https://gitlab.com/krakrjak/restman#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal-types" or (errorHandler.buildDepError "ansi-terminal-types"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
        ];
        buildable = true;
      };
      exes = {
        "restman" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."restman" or (errorHandler.buildDepError "restman"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          ];
          buildable = true;
        };
      };
      tests = {
        "restman-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."restman" or (errorHandler.buildDepError "restman"))
          ];
          buildable = true;
        };
      };
    };
  }