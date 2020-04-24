{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-parsec-picky"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Matej Kollar";
      maintainer = "208115@mail.muni.cz";
      author = "Matej Kollar";
      homepage = "https://github.com/FPBrno/aeson-parsec-picky";
      url = "";
      synopsis = "Alternative JSON parser based on Parsec and Aeson";
      description = "JSON parser with nice error messages and\nlittle more strict syntax (whitespace-wise).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }