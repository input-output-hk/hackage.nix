{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "husky"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2009 Markus Dittrich";
      maintainer = "Markus Dittrich <haskelladdict@gmail.com>";
      author = "Markus Dittrich <haskelladdict@gmail.com>";
      homepage = "http://github.com/markusle/husky/tree/master";
      url = "";
      synopsis = "A simple command line calculator.";
      description = "husky is a command line calculator with a small memory\nfootprint. It can be used in a fashion similar to the\ninteractive shells of python, octave, or ruby.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "husky" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }