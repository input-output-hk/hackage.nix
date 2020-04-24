{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-pitch"; version = "1.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Musical pitch representation.";
      description = "This package provides various representations of musical pitch.\n\nThis library is part of the Music Suite, see\n<http://music-suite.github.io>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."music-pitch-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch-literal"))
          (hsPkgs."data-interval" or ((hsPkgs.pkgs-errors).buildDepError "data-interval"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."vector-space-points" or ((hsPkgs.pkgs-errors).buildDepError "vector-space-points"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."positive" or ((hsPkgs.pkgs-errors).buildDepError "positive"))
          (hsPkgs."type-unary" or ((hsPkgs.pkgs-errors).buildDepError "type-unary"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }