{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "fixplate"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2019 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Uniplate-style generic traversals for optionally annotated fixed-point types.";
      description = "Uniplate-style generic traversals for fixed-point types, which can be\noptionally annotated with attributes. We also provide recursion schemes,\na generic zipper, generic pretty-printer, generic tries, generic hashing,\nand generic tree visualization. See the module \"Data.Generics.Fixplate\" and\nthen the individual modules for more detailed information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "fixplate-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."fixplate" or ((hsPkgs.pkgs-errors).buildDepError "fixplate"))
            ];
          buildable = true;
          };
        };
      };
    }