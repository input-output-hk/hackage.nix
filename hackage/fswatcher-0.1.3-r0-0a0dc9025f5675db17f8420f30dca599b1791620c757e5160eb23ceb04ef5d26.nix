{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fswatcher"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ehamberg@gmail.com";
      author = "Erlend Hamberg";
      homepage = "http://www.github.com/ehamberg/fswatcher/";
      url = "";
      synopsis = "Watch a file/directory and run a command when it's modified";
      description = "A simple program that watches a file or a directory and\nruns a given command whenever the file or a file within the\ndirectory is changed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fswatcher" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }