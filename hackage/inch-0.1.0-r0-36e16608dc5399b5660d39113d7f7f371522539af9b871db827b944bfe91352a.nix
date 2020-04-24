{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "inch"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Adam Gundry";
      maintainer = "Adam Gundry <adam.gundry@strath.ac.uk>";
      author = "Adam Gundry <adam.gundry@strath.ac.uk>";
      homepage = "https://github.com/adamgundry/inch/";
      url = "";
      synopsis = "A type-checker for Haskell with integer constraints";
      description = "Inch is a type-checker for a subset of Haskell (plus some GHC\nextensions) with the addition of integer constraints. After\nsuccessfully type-checking a source file, it outputs an\noperationally equivalent version with the type-level integers\nerased, so it can be used as a preprocessor in order to compile\nprograms.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "inch" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."IndentParser" or ((hsPkgs.pkgs-errors).buildDepError "IndentParser"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."presburger" or ((hsPkgs.pkgs-errors).buildDepError "presburger"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-inch" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."IndentParser" or ((hsPkgs.pkgs-errors).buildDepError "IndentParser"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."presburger" or ((hsPkgs.pkgs-errors).buildDepError "presburger"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }