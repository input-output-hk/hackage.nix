{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-rpm"; version = "0.6.4"; };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <juhp@community.haskell.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM package creator for Haskell Cabal-based packages";
      description = "This package generates RPM spec files from Haskell Cabal packages.\n\nRecent changes:\n\n* 0.6.4: add manpage and cabal-rpm-diff wrapper\n\n* 0.6.3: accept tarball arg, use temporary working directory, and add manpage\n\n* 0.6.2: fix L/GPL version output\n\n* 0.6.1: fix bugs for 'cabal-rpm pkg' unpacking and extra docs\n\n* 0.6.0: new update and release for Cabal >= 1.10";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-rpm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }