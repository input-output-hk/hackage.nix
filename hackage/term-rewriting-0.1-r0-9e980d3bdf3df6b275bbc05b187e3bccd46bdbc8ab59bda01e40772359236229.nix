{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "term-rewriting"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "haskell-rewriting@informatik.uibk.ac.at";
      author = "Martin Avanzini,\nBertram Felgenhauer,\nChristian Sternagel";
      homepage = "http://cl-informatik.uibk.ac.at/software/haskell-rewriting/";
      url = "";
      synopsis = "Term Rewriting Library";
      description = "Yet Another Term Rewriting Library.\n\nThis library provides basic data types and functionality for first order\nterm rewriting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."union-find-array" or ((hsPkgs.pkgs-errors).buildDepError "union-find-array"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }