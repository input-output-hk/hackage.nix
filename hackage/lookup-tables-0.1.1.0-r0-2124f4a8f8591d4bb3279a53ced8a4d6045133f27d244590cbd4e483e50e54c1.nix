{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lookup-tables"; version = "0.1.1.0"; };
      license = "ISC";
      copyright = "2015 Jacob McArthur";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Statically generate lookup tables using Template\nHaskell.";
      description = "This package provides a single Template Haskell\nfunction for memoizing a given function by\nstatically generating a lookup table.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "lookup-tables-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lookup-tables" or ((hsPkgs.pkgs-errors).buildDepError "lookup-tables"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }