{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hback"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      homepage = "http://hback.googlecode.com/";
      url = "";
      synopsis = "N-back memory game";
      description = "N-back memory game using gtk2hs.\n\nInstructions on installation and gameplay available at:\n<http://hback.googlecode.com/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hback" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."svgcairo" or ((hsPkgs.pkgs-errors).buildDepError "svgcairo"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }