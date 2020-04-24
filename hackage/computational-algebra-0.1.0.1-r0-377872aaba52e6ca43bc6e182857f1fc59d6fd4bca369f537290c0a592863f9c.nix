{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "computational-algebra"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/computational-algebra";
      url = "";
      synopsis = "Well-kinded computational algebra library, currently supporting Groebner basis.";
      description = "Dependently-typed computational algebra libray for Groebner basis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."peggy" or ((hsPkgs.pkgs-errors).buildDepError "peggy"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."heaps" or ((hsPkgs.pkgs-errors).buildDepError "heaps"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.6.1") (hsPkgs."monomorphic" or ((hsPkgs.pkgs-errors).buildDepError "monomorphic"));
        buildable = true;
        };
      };
    }