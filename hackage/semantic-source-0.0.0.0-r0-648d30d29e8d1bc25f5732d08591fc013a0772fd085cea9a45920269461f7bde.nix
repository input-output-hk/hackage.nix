{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "semantic-source"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2019 GitHub, Inc.";
      maintainer = "opensource+semantic@github.com";
      author = "The Semantic authors";
      homepage = "https://github.com/github/semantic/tree/master/semantic-source#readme";
      url = "";
      synopsis = "Types and functionality for working with source code";
      description = "Types and functionality for working with source code (program text).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."generic-monoid" or ((hsPkgs.pkgs-errors).buildDepError "generic-monoid"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."semilattices" or ((hsPkgs.pkgs-errors).buildDepError "semilattices"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."semantic-source" or ((hsPkgs.pkgs-errors).buildDepError "semantic-source"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."semantic-source" or ((hsPkgs.pkgs-errors).buildDepError "semantic-source"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }