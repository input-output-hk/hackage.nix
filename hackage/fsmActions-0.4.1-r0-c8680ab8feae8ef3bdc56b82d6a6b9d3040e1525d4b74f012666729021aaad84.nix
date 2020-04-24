{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fsmActions"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Andy Gimblett <haskell@gimbo.org.uk>";
      maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
      author = "Andy Gimblett <haskell@gimbo.org.uk>";
      homepage = "http://projects.haskell.org/fsmActions/";
      url = "";
      synopsis = "Finite state machines and FSM actions";
      description = "This is a library for representing and manipulating finite state\nmachines (FSMs) in Haskell, with an emphasis on computing the\neffects of sequences of transitions across entire machines (which\nwe call actions), and in particular investigating action\nequivalences between such sequences.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }