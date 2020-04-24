{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wide-word"; version = "0.1.0.9"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2017 Erik de Castro Lopo <erikd@mega-nerd.com>";
      maintainer = "erikd@mega-nerd.com";
      author = "Erik de Castro Lopo";
      homepage = "https://github.com/erikd/wide-word";
      url = "";
      synopsis = "Data types for large but fixed width signed and unsigned integers";
      description = "A library to provide data types for large (ie > 64 bits) but fixed width signed\nand unsigned integers with the usual typeclass instances to allow them to be used\ninterchangeably with `Word64`.\n\nThe types and operations are coded to be as fast as possible using strictness\nannotations, `INLINEABLE` pragmas and unboxed values and operations where\nappropriate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
            ];
          buildable = true;
          };
        "laws" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
            (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
            ];
          buildable = true;
          };
        };
      };
    }