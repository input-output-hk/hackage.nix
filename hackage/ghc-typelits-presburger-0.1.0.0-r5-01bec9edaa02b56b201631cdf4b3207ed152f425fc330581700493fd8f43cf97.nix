{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-presburger"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/ghc-typelits-presburger#readme";
      url = "";
      synopsis = "Presburger Arithmetic Solver for GHC Type-level natural numbers";
      description = "@ghc-typelits-presburger@ augments GHC type-system with Presburger Arithmetic Solver for Type-level natural numbers.\nYou can use by adding this package to @build-depends@ and add the following pragma to the head of .hs files:\n> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."presburger" or ((hsPkgs.pkgs-errors).buildDepError "presburger"))
          (hsPkgs."equational-reasoning" or ((hsPkgs.pkgs-errors).buildDepError "equational-reasoning"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          ];
        buildable = true;
        };
      exes = {
        "simple-arith" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-typelits-presburger" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-presburger"))
            (hsPkgs."equational-reasoning" or ((hsPkgs.pkgs-errors).buildDepError "equational-reasoning"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }