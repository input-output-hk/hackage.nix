{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hplayground"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "https://github.com/agocorona/hplayground";
      url = "";
      synopsis = "a client-side haskell framework that compiles to javascript with the haste compiler";
      description = "Formlets with reactive effects in the client side. See homepage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.haste-inst
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
            (hsPkgs."haste-lib" or ((hsPkgs.pkgs-errors).buildDepError "haste-lib"))
            (hsPkgs."haste-perch" or ((hsPkgs.pkgs-errors).buildDepError "haste-perch"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
            (hsPkgs."haste-compiler" or ((hsPkgs.pkgs-errors).buildDepError "haste-compiler"))
            (hsPkgs."haste-perch" or ((hsPkgs.pkgs-errors).buildDepError "haste-perch"))
            ];
        buildable = true;
        };
      };
    }