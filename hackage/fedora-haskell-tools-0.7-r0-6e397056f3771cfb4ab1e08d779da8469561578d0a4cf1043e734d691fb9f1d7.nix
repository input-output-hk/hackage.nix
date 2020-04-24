{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fedora-haskell-tools"; version = "0.7"; };
      license = "GPL-3.0-only";
      copyright = "2014-2019 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <petersen@fedoraproject.org>";
      homepage = "https://github.com/fedora-haskell/fedora-haskell-tools";
      url = "";
      synopsis = "Building and maintenance tools for Fedora Haskell";
      description = "Tools for building and managing Fedora Haskell packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fhpkg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fedora-dists" or ((hsPkgs.pkgs-errors).buildDepError "fedora-dists"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."simple-cmd" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        "fhbz" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fedora-dists" or ((hsPkgs.pkgs-errors).buildDepError "fedora-dists"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        "fhmock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fedora-dists" or ((hsPkgs.pkgs-errors).buildDepError "fedora-dists"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."simple-cmd" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd-args"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }