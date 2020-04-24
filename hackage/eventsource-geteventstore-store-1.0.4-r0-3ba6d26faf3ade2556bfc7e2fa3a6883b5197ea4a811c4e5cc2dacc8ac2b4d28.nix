{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "eventsource-geteventstore-store";
        version = "1.0.4";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.comm";
      author = "Yorick Laupa";
      homepage = "https://github.com/YoEight/eventsource-api#readme";
      url = "";
      synopsis = "GetEventStore store implementation.";
      description = "GetEventStore store implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."eventstore" or ((hsPkgs.pkgs-errors).buildDepError "eventstore"))
          (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "geteventstore-store-test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."eventsource-geteventstore-store" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-geteventstore-store"))
            (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
            (hsPkgs."eventsource-store-specs" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-store-specs"))
            (hsPkgs."eventstore" or ((hsPkgs.pkgs-errors).buildDepError "eventstore"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          buildable = true;
          };
        };
      };
    }