{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clash-prelude"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2014 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://christiaanb.github.io/clash2/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - Prelude library";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modeled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* Prelude library containing datatypes and functions for circuit design\n\nTo use the library:\n\n* Import \"CLaSH.Prelude\"\n\n* Additionally import \"CLaSH.Prelude.Explicit\" if you want to design\nexplicitly clocked circuits in a multi-clock setting\n\nA preliminary version of a tutorial can be found in \"CLaSH.Tutorial\", for a\ngeneral overview of the library you should however check out \"CLaSH.Prelude\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          ];
        buildable = true;
        };
      };
    }