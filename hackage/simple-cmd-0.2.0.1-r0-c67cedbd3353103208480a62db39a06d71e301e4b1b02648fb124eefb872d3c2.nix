{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-cmd"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Simple String-based process commands";
      description = "Simple wrappers over System.Process\n(readProcess, readProcessWithExitCode, rawSystem, and createProcess).\nThe idea is to provide some common idioms for calling out to commands\nfrom programs.  For more advanced shell-scripting or streaming\nuse turtle, shelly, command, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }