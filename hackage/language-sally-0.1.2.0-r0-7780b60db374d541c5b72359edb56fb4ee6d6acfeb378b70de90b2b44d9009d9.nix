{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-sally"; version = "0.1.2.0"; };
      license = "ISC";
      copyright = "Galois, Inc. 2017";
      maintainer = "bjones@galois.com";
      author = "Benjamin Jones";
      homepage = "";
      url = "";
      synopsis = "AST and pretty printer for Sally";
      description = "AST and pretty printer for the Sally\n<https://github.com/SRI-CSL/sally> input language";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          ];
        buildable = true;
        };
      };
    }