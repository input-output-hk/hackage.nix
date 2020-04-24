{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "archive"; version = "1.2.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "David Fox, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "A library and programs for creating hardlinked incremental archives or backups";
      description = "Uses rsync, etc to before backups similar to the old timemachine script and the newer 'Time Machine' OS X tool.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."Unixutils" or ((hsPkgs.pkgs-errors).buildDepError "Unixutils"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."debian" or ((hsPkgs.pkgs-errors).buildDepError "debian"))
          (hsPkgs."debian-mirror" or ((hsPkgs.pkgs-errors).buildDepError "debian-mirror"))
          (hsPkgs."help" or ((hsPkgs.pkgs-errors).buildDepError "help"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."progress" or ((hsPkgs.pkgs-errors).buildDepError "progress"))
          (hsPkgs."Extra" or ((hsPkgs.pkgs-errors).buildDepError "Extra"))
          ];
        buildable = true;
        };
      exes = { "archive" = { buildable = true; }; };
      };
    }