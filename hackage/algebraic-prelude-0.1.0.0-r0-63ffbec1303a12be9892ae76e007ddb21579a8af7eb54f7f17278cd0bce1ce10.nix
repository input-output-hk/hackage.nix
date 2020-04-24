{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "algebraic-prelude"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/algebraic-prelude#readme";
      url = "";
      synopsis = "Algebraically structured Prelude";
      description = "This package provides a drop-in replacement for Prelude module,\nbased on algebraic hierarchy provided by <https://hackage.haskell.org/package/algebra algebra> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          ];
        buildable = true;
        };
      exes = {
        "sandpit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."algebraic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "algebraic-prelude"))
            ];
          buildable = false;
          };
        };
      };
    }