{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "baserock-schema"; version = "0.0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Baserock Definitions Schema";
      description = "Baserock Definitions Schema - Parsers, Printers, Encoders, Decoders, ASTs, Graphs and Traversals";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."yaml-pretty-extras" or ((hsPkgs.pkgs-errors).buildDepError "yaml-pretty-extras"))
          ];
        buildable = true;
        };
      exes = {
        "baserock" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."baserock-schema" or ((hsPkgs.pkgs-errors).buildDepError "baserock-schema"))
            (hsPkgs."etc" or ((hsPkgs.pkgs-errors).buildDepError "etc"))
            (hsPkgs."gitlab-api" or ((hsPkgs.pkgs-errors).buildDepError "gitlab-api"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."yaml-pretty-extras" or ((hsPkgs.pkgs-errors).buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      tests = {
        "earthquake-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."baserock-schema" or ((hsPkgs.pkgs-errors).buildDepError "baserock-schema"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."yaml-pretty-extras" or ((hsPkgs.pkgs-errors).buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      };
    }