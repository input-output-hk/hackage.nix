{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "LinguisticsTypes"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015";
      homepage = "https://github.com/choener/LinguisticsTypes";
      url = "";
      synopsis = "Collection of types for natural language";
      description = "Types used for natural language applications. Includes an\ninternalized text type, @BTI@ which represents internalized\n@Text@ values with @Int@s.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bimaps" or ((hsPkgs.pkgs-errors).buildDepError "bimaps"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
          (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."stringable" or ((hsPkgs.pkgs-errors).buildDepError "stringable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."LinguisticsTypes" or ((hsPkgs.pkgs-errors).buildDepError "LinguisticsTypes"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."stringable" or ((hsPkgs.pkgs-errors).buildDepError "stringable"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      };
    }