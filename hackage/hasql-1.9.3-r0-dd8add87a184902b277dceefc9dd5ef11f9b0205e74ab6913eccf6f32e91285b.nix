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
      specVersion = "3.0";
      identifier = { name = "hasql"; version = "1.9.3"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "Fast PostgreSQL driver with a flexible mapping API";
      description = "Root of the \\\"hasql\\\" ecosystem.\nThis library provides connection management, execution of queries and mapping of parameters and results.\nExtended functionality such as pooling, transactions and compile-time checking is provided by extension libraries.\nFor more details and tutorials see <https://github.com/nikita-volkov/hasql the readme>.\n\nThe API comes free from all kinds of exceptions.\nAll error-reporting is explicit and is presented using the 'Either' type.\n\n\\\"hasql\\\" requires you to have the \"\\libpq\\\" C-library installed to compile.\nStarting from version 1.7 of \\\"hasql\\\" it requires \\\"libpq\\\" of at least version 14.\n\\\"libpq\\\" comes distributed with PostgreSQL,\nso typically all you need is just to install the latest PostgreSQL distro.\n\nDespite the mentioned requirements for \\\"libpq\\\" \\\"hasql\\\" is compatible\nwith a wide range of PostgreSQL servers with tests having been conducted starting from\nversion 8.3.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-strict-builder" or (errorHandler.buildDepError "bytestring-strict-builder"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
      sublibs = {
        "testing-kit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."contravariant-extras" or (errorHandler.buildDepError "contravariant-extras"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql".components.sublibs.testing-kit or (errorHandler.buildDepError "hasql:testing-kit"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "threads-test" = {
          depends = [
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          buildable = true;
        };
        "profiling" = {
          depends = [
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          buildable = true;
        };
        "hspec" = {
          depends = [
            (hsPkgs."hasql".components.sublibs.testing-kit or (errorHandler.buildDepError "hasql:testing-kit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          buildable = true;
        };
      };
    };
  }