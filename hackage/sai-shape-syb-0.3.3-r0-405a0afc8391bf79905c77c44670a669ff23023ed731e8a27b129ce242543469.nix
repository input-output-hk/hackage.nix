{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use_data_tree = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sai-shape-syb"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew Seniuk";
      homepage = "http://www.fremissant.net/shape-syb";
      url = "";
      synopsis = "Obtain homogeneous values from arbitrary values, transforming or culling data";
      description = "This package provides SYB shape support: generic mapping to\nhomogeneous types, and related features.  Complements existing\nUniplate and TH shape libraries.\n\nGiven a value of arbitrary complexity (mutually recursive\nheterogeneous constructor application), you can obtain\na structure-preserving representation (homomorphism) as\na homogeneous type @Homo a@, parameterised by any choice type @a@.\n\nSee the project\n<http://www.fremissant.net/shape-syb homepage> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
          ] ++ (pkgs.lib).optional (flags.use_data_tree) (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"));
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sai-shape-syb" or ((hsPkgs.pkgs-errors).buildDepError "sai-shape-syb"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }