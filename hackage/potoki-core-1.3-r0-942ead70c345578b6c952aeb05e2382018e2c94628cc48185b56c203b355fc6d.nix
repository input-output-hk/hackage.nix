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
      identifier = { name = "potoki-core"; version = "1.3"; };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/potoki-core ";
      url = "";
      synopsis = "Low-level components of \"potoki\"";
      description = "Provides everything required for building custom instances of\nthe \\\"potoki\\\" abstractions.\nConsider this library to be the Internals modules of \\\"potoki\\\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."deque" or (errorHandler.buildDepError "deque"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."potoki-core" or (errorHandler.buildDepError "potoki-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }