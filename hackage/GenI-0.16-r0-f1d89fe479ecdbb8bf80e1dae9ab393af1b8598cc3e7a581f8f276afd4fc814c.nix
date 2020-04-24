{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GenI"; version = "0.16"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "eric.kow@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://trac.loria.fr/~geni";
      url = "";
      synopsis = "GenI, an FB-LTAG surface realiser";
      description = "GenI, a natural language generator (more precisely, an FB-LTAG surface realiser)";
      buildType = "Custom";
      };
    components = {
      exes = {
        "geni" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
              (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
              (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
              (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
              (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
              (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
              (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
              (hsPkgs."libGenI" or ((hsPkgs.pkgs-errors).buildDepError "libGenI"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
              (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
              (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
              (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
              (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
              (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
              (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
              (hsPkgs."libGenI" or ((hsPkgs.pkgs-errors).buildDepError "libGenI"))
              ];
          buildable = true;
          };
        };
      };
    }