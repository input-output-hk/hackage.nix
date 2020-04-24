{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "BiobaseTypes"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015 - 2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015 - 2016";
      homepage = "https://github.com/choener/BiobaseTypes";
      url = "";
      synopsis = "Collection of types for bioinformatics";
      description = "Types used in a number of bioinformatics libraries.\n\n* linear indices\n\n* energies\n\n* numerics";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
          (hsPkgs."cereal-vector" or ((hsPkgs.pkgs-errors).buildDepError "cereal-vector"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."intern" or ((hsPkgs.pkgs-errors).buildDepError "intern"))
          (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."stringable" or ((hsPkgs.pkgs-errors).buildDepError "stringable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
          (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
          (hsPkgs."bimaps" or ((hsPkgs.pkgs-errors).buildDepError "bimaps"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."BiobaseTypes" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTypes"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        };
      };
    }