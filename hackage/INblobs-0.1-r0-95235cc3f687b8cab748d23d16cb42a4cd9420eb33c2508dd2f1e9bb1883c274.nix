{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "INblobs"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jmvilaca@di.uminho.pt, danielgomesmendes@gmail.com";
      author = "Arjan van IJzendoorn, Martijn Schrage, Malcolm Wallace, Miguel Vilaca";
      homepage = "http://haskell.di.uminho.pt/jmvilaca/INblobs/";
      url = "";
      synopsis = "Editor and interpreter for Interaction Nets";
      description = "INblobs is a visual tool developed at Minho for integrated development with\nInteraction Nets (<http://en.wikipedia.org/wiki/Interaction_nets>).\nINblobs includes a visual editor that allows users to edit both interaction\nnets and interaction rules; nets may then be reduced within the tool, or\nelse exported in a text format to be given as input to other tools.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "INblobs" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }