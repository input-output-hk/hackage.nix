{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gui = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gt-tools"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "Mikhail S. Pobolovets 2009-2010";
      maintainer = "Mikhail S. Pobolovets <styx.mp@gmail.com>";
      author = "Mikhail S. Pobolovets";
      homepage = "http://github.com/styx/gtc";
      url = "git://github.com/styx/gtc.git";
      synopsis = "Console and GUI interface for Google Translate service";
      description = "This package consist from console backend, GUI backend and Core module\nfor Google Translate service. It allows you to translate words and sentences\nbetween different languages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gtc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "gtg" = {
          depends = (pkgs.lib).optionals (flags.gui) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = if flags.gui then true else false;
          };
        };
      };
    }