{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-rpm"; version = "0.8.4"; };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2013 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>, Jens Petersen <juhp@community.haskell.org>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM package creator for Haskell Cabal-based packages";
      description = "This package generates RPM packages from Haskell Cabal packages.\n\nRecent changes:\n\n* 0.8.4: use repoquery for C deps, pkgconfig quoting, devel provides static\n\n* 0.8.3: only install missing dependencies, word-wrap generic descriptions\n\n* 0.8.2: wrap after sentences near end of line, handle pkg-ver arg, sort deps\n\n* 0.8.1: word wrapping of descriptions\n\n* 0.8.0: new simpler revised Fedora packaging; check external commands available\n\nSee <https://github.com/juhp/cabal-rpm/blob/master/NEWS> for more details and history.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cblrpm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }