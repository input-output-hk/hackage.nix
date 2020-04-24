{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hmenu"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sulami@peerwire.org";
      author = "Robin Schroer";
      homepage = "";
      url = "";
      synopsis = "CLI fuzzy finder and launcher";
      description = "hmenu is a program launcher for the terminal inspired by\ndmenu. Contrary to dmenu, it uses fuzzy filtering to find\nthe program you are looking for.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hmenu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }