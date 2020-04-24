{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "nyan"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Bored? Nyan cat!";
      description = "A little ncurses animation of nyan cat.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nyan" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ncurses" or ((hsPkgs.pkgs-errors).buildDepError "ncurses"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }