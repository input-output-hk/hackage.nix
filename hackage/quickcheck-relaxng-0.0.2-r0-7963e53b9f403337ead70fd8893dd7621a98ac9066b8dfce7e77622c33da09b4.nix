{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "quickcheck-relaxng"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Audrey Tang 2014 (CC0)";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://github.com/audreyt/quickcheck-relaxng/";
      url = "";
      synopsis = "Generate RelaxNG-constrained XML documents for QuickCheck";
      description = "Generate RelaxNG-constrained XML documents for QuickCheck";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-regex" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-regex"))
          (hsPkgs."hxt-relaxng" or ((hsPkgs.pkgs-errors).buildDepError "hxt-relaxng"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }