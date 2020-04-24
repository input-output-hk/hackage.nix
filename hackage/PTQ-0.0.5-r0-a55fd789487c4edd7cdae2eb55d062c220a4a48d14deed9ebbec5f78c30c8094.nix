{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { utf8terminal = false; utf8cgi = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "PTQ"; version = "0.0.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Masahiro Sakai <masahiro.sakai AT gmail.com>";
      author = "Masahiro Sakai";
      homepage = "http://www.tom.sfc.keio.ac.jp/~sakai/hiki/?hsPTQ";
      url = "";
      synopsis = "An implementation of Montague's PTQ.";
      description = "An implementation of Montague's PTQ (Proper Treatment of Quantification). It translates simple plain English sentences into formulas of intentional logic.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ptq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ] ++ (pkgs.lib).optional (flags.utf8terminal) (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"));
          buildable = true;
          };
        "ptq.cgi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            ] ++ (pkgs.lib).optional (flags.utf8cgi) (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"));
          buildable = true;
          };
        };
      };
    }