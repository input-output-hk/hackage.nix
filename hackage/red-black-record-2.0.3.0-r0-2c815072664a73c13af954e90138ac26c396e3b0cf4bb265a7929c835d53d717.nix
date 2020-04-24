{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "red-black-record"; version = "2.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Extensible records and variants indexed by a type-level Red-Black tree.";
      description = "A library that provides extensible records and variants,\nboth indexed by a type-level red-black tree that maps\nSymbol keys to value Types.\n\nThe keys correspond to fields\nnames in records, and to branch names in variants.\n\nEach value type in a field or branch comes wrapped in a\ntype constructor of kind @Type -> Type@.\n\nThe records and variants can be converted to and from\nregular Haskell datatypes; also to and from the unlabelled\nn-ary products and sums of the @sop-core@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
          ];
        buildable = true;
        };
      sublibs = {
        "demoted" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."red-black-record" or ((hsPkgs.pkgs-errors).buildDepError "red-black-record"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."red-black-record" or ((hsPkgs.pkgs-errors).buildDepError "red-black-record"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."red-black-record" or ((hsPkgs.pkgs-errors).buildDepError "red-black-record"))
            (hsPkgs."demoted" or ((hsPkgs.pkgs-errors).buildDepError "demoted"))
            ];
          buildable = true;
          };
        };
      };
    }