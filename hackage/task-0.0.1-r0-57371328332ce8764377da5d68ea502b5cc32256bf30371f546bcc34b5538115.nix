{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "task"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sean.seefried@gmail.com";
      author = "Sean Seefried";
      homepage = "";
      url = "";
      synopsis = "A command line tool for keeping track of tasks you worked on";
      description = "'task' is a simple command line tool for keeping track of\ntasks you are working on. Tasks are kept in a simple\npersistent store. Each task can be tagged with arbitrary\nkey/value pairs and the results can be exported to CSV files\nfiltered on said key/value pairs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "task" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."csv-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "csv-enumerator"))
            ];
          buildable = true;
          };
        };
      };
    }