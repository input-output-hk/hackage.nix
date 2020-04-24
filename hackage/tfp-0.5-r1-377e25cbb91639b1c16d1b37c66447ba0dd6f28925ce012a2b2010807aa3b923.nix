{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tfp"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Peter Gavin";
      maintainer = "pgavin@gmail.com";
      author = "Peter Gavin";
      homepage = "http://github.com/pgavin/tfp";
      url = "http://github.com/pgavin/tfp";
      synopsis = "Type-level programming library using type families";
      description = "TFP (short for Type Family Programming) provides implementations of type-level integers and booleans,\nand (eventually) simple type-level data structures. It uses type families as functions to produce new types,\nwhich provides an intuitive way to parameterize data types and functions on numerical values at compile time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "tfp-test" = {
          depends = (pkgs.lib).optionals (flags.build-test) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = if flags.build-test then true else false;
          };
        };
      };
    }