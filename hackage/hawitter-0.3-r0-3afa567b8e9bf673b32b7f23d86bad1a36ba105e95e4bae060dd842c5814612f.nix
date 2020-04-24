{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hawitter"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa <xanxys@gmail.com>";
      author = "Daiki Handa <xanxys@gmail.com>";
      homepage = "http://d.hatena.ne.jp/xanxys/20100318/1268917714";
      url = "";
      synopsis = "A twitter client for GTK+. Beta version.";
      description = "A slick twitter client for GTK. Features syntax highlighting of tweets, URL linking.\nAutomatic URL shortening and 'timeline modifier' will be implemented in future versions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hawitter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gconf" or ((hsPkgs.pkgs-errors).buildDepError "gconf"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }