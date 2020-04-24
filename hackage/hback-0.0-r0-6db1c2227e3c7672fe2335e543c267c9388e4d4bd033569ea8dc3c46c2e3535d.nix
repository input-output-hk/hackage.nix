{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hback"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "N-back memory game";
      description = "N-back memory game using gtk2hs";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hback" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            ];
          buildable = true;
          };
        };
      };
    }