{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2.3.0";
      identifier = { name = "cabal-rpm"; version = "0.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "2007, 2008 Bryan O'Sullivan <bos@serpentine.com>";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/cabal-rpm/";
      url = "";
      synopsis = "RPM package builder for Haskell Cabal source packages.";
      description = "This package turns Haskell Cabal source packages into source and\nbinary RPM packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-rpm" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ];
          buildable = true;
          };
        };
      };
    }