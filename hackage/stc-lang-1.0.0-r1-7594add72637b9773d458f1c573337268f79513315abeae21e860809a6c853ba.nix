{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug-sched = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "stc-lang"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Norman Rink, Sebastian Ertel, Justus Adam";
      maintainer = "justus.adam@tu-dresden.de";
      author = "Norman Rink, Sebastian Ertel, Justus Adam";
      homepage = "https://github.com/ohua-dev/stc-lang#readme";
      url = "";
      synopsis = "A library for implicit, monadic dataflow parallelism";
      description = "See the <https://github.com/ohua-dev/stc-lang#readme readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
          (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
          (hsPkgs."monad-par-extras" or ((hsPkgs.pkgs-errors).buildDepError "monad-par-extras"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "ohua-stream-bench" = {
          depends = [
            (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
            (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
            (hsPkgs."hw-kafka-client" or ((hsPkgs.pkgs-errors).buildDepError "hw-kafka-client"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "microlens-aeson"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stc-lang" or ((hsPkgs.pkgs-errors).buildDepError "stc-lang"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."uuid-types" or ((hsPkgs.pkgs-errors).buildDepError "uuid-types"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "statefulness-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."stc-lang" or ((hsPkgs.pkgs-errors).buildDepError "stc-lang"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }