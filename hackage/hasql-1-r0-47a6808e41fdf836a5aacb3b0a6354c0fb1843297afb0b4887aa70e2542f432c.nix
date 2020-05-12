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
      identifier = { name = "hasql"; version = "1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql ";
      url = "";
      synopsis = "An efficient PostgreSQL driver and a flexible mapping API";
      description = "This package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.\n\nThe version 1 is completely backward-compatible with 0.19.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."bytestring-strict-builder" or (errorHandler.buildDepError "bytestring-strict-builder"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."contravariant-extras" or (errorHandler.buildDepError "contravariant-extras"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        "threads-test" = {
          depends = [
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."rebase" or (errorHandler.buildDepError "rebase"))
            ];
          buildable = true;
          };
        "profiling" = {
          depends = [
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."bug" or (errorHandler.buildDepError "bug"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bug" or (errorHandler.buildDepError "bug"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }