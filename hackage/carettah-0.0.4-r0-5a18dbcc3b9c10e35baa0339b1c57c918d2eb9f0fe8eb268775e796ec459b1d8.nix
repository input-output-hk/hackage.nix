{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "carettah"; version = "0.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "https://gitorious.org/carettah";
      url = "";
      synopsis = "A presentation tool writtten with Haskell.";
      description = "A presentation tool writtten with Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "carettah" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."uglymemo" or ((hsPkgs.pkgs-errors).buildDepError "uglymemo"))
            (hsPkgs."hcwiid" or ((hsPkgs.pkgs-errors).buildDepError "hcwiid"))
            ];
          buildable = true;
          };
        };
      };
    }