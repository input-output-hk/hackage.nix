{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "maam"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david.darais@gmail.com";
      author = "David Darais";
      homepage = "";
      url = "";
      synopsis = "Monadic Abstracting Abstract Machines (MAAM) built on Galois Transformers";
      description = "Monadic Abstracting Abstract Machines (MAAM) built on\nGalois Transformers. See \"Galois Transformers and Modular\nAbstract Interpreters\" by Darais, Might and Van Horn.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "maam_examples" = {
          depends = [
            (hsPkgs."maam" or ((hsPkgs.pkgs-errors).buildDepError "maam"))
            ];
          buildable = true;
          };
        };
      };
    }