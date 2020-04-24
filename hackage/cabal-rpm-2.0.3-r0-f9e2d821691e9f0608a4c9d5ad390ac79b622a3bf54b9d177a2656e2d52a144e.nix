{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = false; curl = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-rpm"; version = "2.0.3"; };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2020 Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <juhpetersen@gmail.com>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM packaging tool for Haskell Cabal-based packages";
      description = "This package provides a RPM packaging tool for Haskell Cabal-based packages.\n\ncabal-rpm has commands to generate a RPM spec file and srpm for a package.\nIt can rpmbuild packages, yum/dnf install their dependencies, prep packages,\nand install them. There are commands to list package dependencies and\nmissing dependencies. The diff command compares the current spec file with\na freshly generated one, the update command updates the spec file to latest\nversion from Stackage or Hackage, and the refresh command updates the spec\nfile to the current cabal-rpm packaging. It also handles Hackage revisions of\npackages. Standalone packages can also be packaged built with cabal-install.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-rpm" = {
          depends = (([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."simple-cabal" or ((hsPkgs.pkgs-errors).buildDepError "simple-cabal"))
            (hsPkgs."simple-cmd" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd-args"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ] ++ (if flags.old-locale
            then [
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (if compiler.isGhc && (compiler.version).ge "8.0" && !flags.curl
            then [
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
              (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
              (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
              ]
            else [
              (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
              ]);
          buildable = true;
          };
        };
      };
    }