{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "eventsource-stub-store"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventsource-api-hs";
      url = "";
      synopsis = "An in-memory stub store implementation.";
      description = "An in-memory stub store implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "eventsource-stub-store-test-suite" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
            (hsPkgs."eventsource-store-specs" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-store-specs"))
            (hsPkgs."eventsource-stub-store" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-stub-store"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      };
    }