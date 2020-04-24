{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "equational-reasoning"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2013-2020";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Proof assistant for Haskell using DataKinds & PolyKinds";
      description = "A simple convenient library to write equational / preorder proof as in Agda.\nSince 0.6.0.0, this no longer depends on @singletons@ package, and the @Proof.Induction@ module goes to @equational-reasoning-induction@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-extras" or ((hsPkgs.pkgs-errors).buildDepError "th-extras"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "8.4"
          then [
            (hsPkgs."th-desugar" or ((hsPkgs.pkgs-errors).buildDepError "th-desugar"))
            ]
          else [
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."th-desugar" or ((hsPkgs.pkgs-errors).buildDepError "th-desugar"))
            ]);
        buildable = true;
        };
      };
    }