{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "NonEmptyList"; version = "0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "2010 Tony Morris, Oliver Taylor, Eelis van der Weegen";
      maintainer = "code@tmorris.net";
      author = "Tony Morris, Oliver Taylor, Eelis van der Weegen";
      homepage = "http://code.google.com/p/nonempty/";
      url = "";
      synopsis = "A list with a length of at least one.";
      description = "A list with a length of at least one and type-safe head/tail operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."Semigroup" or ((hsPkgs.pkgs-errors).buildDepError "Semigroup"))
          (hsPkgs."category-extras" or ((hsPkgs.pkgs-errors).buildDepError "category-extras"))
          ];
        buildable = true;
        };
      };
    }