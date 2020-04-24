{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "vty"; version = "4.7.0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "Stefan O'Rear, Corey O'Connor";
      homepage = "https://github.com/coreyoconnor/vty";
      url = "";
      synopsis = "A simple terminal access library";
      description = "vty is terminal GUI library in the niche of ncurses.  It is intended to be easy to use, have no\nconfusing corner cases, and good support for common terminal types.\n\nIncluded in the source distribution is a program test/interactive_terminal_test.hs that\ndemonstrates the various features.\n\nIf your terminal is not behaving as expected the results of the test/interactive_terminal_test.hs\nprogram should be sent to the Vty maintainter to aid in debugging the issue.\n\nNotable infelicities: Sometimes poor efficiency; Assumes UTF-8 character encoding support by the\nterminal;\n\nProject is hosted on github.com: https://github.com/coreyoconnor/vty\n\ngit clone git://github.com/coreyoconnor/vty.git\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; 2008-2011 Corey O'Connor; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }