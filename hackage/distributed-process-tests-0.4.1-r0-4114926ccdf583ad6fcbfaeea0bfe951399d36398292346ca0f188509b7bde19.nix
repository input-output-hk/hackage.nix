{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-tests"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "watson.timothy@gmail.com, edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process-tests";
      url = "";
      synopsis = "Tests for distributed-process.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."distributed-static" or ((hsPkgs.pkgs-errors).buildDepError "distributed-static"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."rematch" or ((hsPkgs.pkgs-errors).buildDepError "rematch"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          ];
        buildable = true;
        };
      tests = {
        "TestCH" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-tests" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-tests"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestClosure" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-tests" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-tests"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestStats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-tests" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-tests"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestMx" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-tests" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-tests"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "TestTracing" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."distributed-process-tests" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-tests"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }