{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tracing = true; fullbenchmarks = true; complextests = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "isobmff-builder"; version = "0.11.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff-builder#readme";
      url = "";
      synopsis = "A (bytestring-) builder for the ISO-14496-12 base media file format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."type-list" or ((hsPkgs.pkgs-errors).buildDepError "type-list"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."type-spec" or ((hsPkgs.pkgs-errors).buildDepError "type-spec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty-types" or ((hsPkgs.pkgs-errors).buildDepError "pretty-types"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."isobmff-builder" or ((hsPkgs.pkgs-errors).buildDepError "isobmff-builder"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."type-spec" or ((hsPkgs.pkgs-errors).buildDepError "type-spec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."pretty-types" or ((hsPkgs.pkgs-errors).buildDepError "pretty-types"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bit-records" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."isobmff-builder" or ((hsPkgs.pkgs-errors).buildDepError "isobmff-builder"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."type-spec" or ((hsPkgs.pkgs-errors).buildDepError "type-spec"))
            ];
          buildable = true;
          };
        };
      };
    }