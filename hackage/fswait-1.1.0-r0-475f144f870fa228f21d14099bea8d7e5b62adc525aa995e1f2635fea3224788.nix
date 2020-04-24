{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fswait"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/fswait";
      url = "";
      synopsis = "Wait and observe events on the filesystem for a path, with a timeout";
      description = "@fswait@ is a utility for blocking on the observation of a\nfilesystem event for a path with a timeout.\n\nThe primary use-case for this is in system startup scripts that\ndepend on the existence of some file or directory that will be\ncreated by another system service or job.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fswait" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            (hsPkgs."time-units" or ((hsPkgs.pkgs-errors).buildDepError "time-units"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }