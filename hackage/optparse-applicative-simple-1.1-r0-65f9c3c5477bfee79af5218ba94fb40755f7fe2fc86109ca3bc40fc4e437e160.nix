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
      identifier = { name = "optparse-applicative-simple"; version = "1.1"; };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/optparse-applicative-simple";
      url = "";
      synopsis = "Simple command line interface arguments parser";
      description = "A very simple API for the \\\"optparse-applicative\\\" library,\nwhich maintains the compatibility with it,\nwhile being completely self-sufficient.\nIOW, you don't need to depend on \\\"optparse-applicative\\\" to\napply this library,\nyet you still can integrate with it, when needed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs."optparse-applicative-simple" or (errorHandler.buildDepError "optparse-applicative-simple"))
            (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }