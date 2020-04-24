{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsgtd"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "michael.lesniak@gmail.com";
      author = "Michael Lesniak";
      homepage = "http://www.mlesniak.com/haskell/gettings-things-done-in-haskell/";
      url = "";
      synopsis = "Console-based gettings-things-done application";
      description = "Console-based application for using the Gettings-Things-\nDone- approach for task management using projects and\ncontexts.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsgtd" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }