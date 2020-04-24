{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql"; version = "0.20.0.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "An efficient native PostgreSQL driver";
      description = "A highly efficient PostgreSQL driver and a flexible mapping API.\n\nThis is an experimental version, which implements the binary protocol natively.\n\nThis package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."slave-thread" or ((hsPkgs.pkgs-errors).buildDepError "slave-thread"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."scanner" or ((hsPkgs.pkgs-errors).buildDepError "scanner"))
          (hsPkgs."binary-parser" or ((hsPkgs.pkgs-errors).buildDepError "binary-parser"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."postgresql-binary" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-binary"))
          (hsPkgs."bytestring-strict-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-strict-builder"))
          (hsPkgs."vector-builder" or ((hsPkgs.pkgs-errors).buildDepError "vector-builder"))
          (hsPkgs."deque" or ((hsPkgs.pkgs-errors).buildDepError "deque"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."persistent-vector" or ((hsPkgs.pkgs-errors).buildDepError "persistent-vector"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            ];
          buildable = true;
          };
        "profiling" = {
          depends = [
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }