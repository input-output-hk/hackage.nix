{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eventsource-store-specs"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://github.com/YoEight/eventsource-api#readme";
      url = "";
      synopsis = "Provides common test specification for Store implementation.";
      description = "Provides common test specification for Store implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."eventsource-api" or ((hsPkgs.pkgs-errors).buildDepError "eventsource-api"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }