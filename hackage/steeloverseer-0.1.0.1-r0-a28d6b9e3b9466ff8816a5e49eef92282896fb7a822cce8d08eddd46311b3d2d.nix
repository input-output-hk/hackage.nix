{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "steeloverseer"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Schell Scivally 2013";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "";
      url = "";
      synopsis = "A tool that runs a list of commands after files change on disk.";
      description = "A command line tool that responds to changes in certain files by running\nspecific commands. Similar to the codemonitor project but simpler and\n(hopefully) cross platform.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sos" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }