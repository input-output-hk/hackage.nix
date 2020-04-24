{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tempo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Timur Rubeko";
      maintainer = "timur@rubeko.com";
      author = "Timur Rubeko";
      homepage = "http://github.com/candidtim/tempo#readme";
      url = "";
      synopsis = "Command-line tool to log time-tracking information into JIRA Tempo plugin";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "tempo-git" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tempo" or ((hsPkgs.pkgs-errors).buildDepError "tempo"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            ];
          buildable = true;
          };
        "tempo-simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tempo" or ((hsPkgs.pkgs-errors).buildDepError "tempo"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tempo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tempo" or ((hsPkgs.pkgs-errors).buildDepError "tempo"))
            ];
          buildable = true;
          };
        };
      };
    }