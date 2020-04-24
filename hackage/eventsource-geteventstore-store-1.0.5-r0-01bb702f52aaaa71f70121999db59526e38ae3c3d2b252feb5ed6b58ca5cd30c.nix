{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "eventsource-geteventstore-store";
        version = "1.0.5";
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
          (hsPkgs."eventstore" or ((hsPkgs.pkgs-errors).buildDepError "eventstore"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "geteventstore-store-test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
            (hsPkgs."eventsource-geteventstore-store" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-geteventstore-store"))
            (hsPkgs."eventsource-store-specs" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-store-specs"))
            (hsPkgs."eventstore" or ((hsPkgs.pkgs-errors).buildDepError "eventstore"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      };
    }