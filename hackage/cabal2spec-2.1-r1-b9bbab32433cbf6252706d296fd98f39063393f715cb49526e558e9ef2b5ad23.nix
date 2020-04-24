{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal2spec"; version = "2.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons, Bryan O'Sullivan, Jens Petersen";
      homepage = "https://github.com/peti/cabal2spec";
      url = "";
      synopsis = "Convert Cabal files into rpm spec files";
      description = "Convert Cabal files into a\n<http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html spec file>\nsuitable for building the package with the RPM package manager. This tool\nprimarily targets the <http://www.suse.com/ SUSE> and\n<http://www.opensuse.org openSUSE> familiy of distributions. Support for\nother RPM-based distributions is currently not available. Check out\n<http://hackage.haskell.org/package/cabal-rpm cabal-rpm> if you need this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "cabal2spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."cabal2spec" or ((hsPkgs.pkgs-errors).buildDepError "cabal2spec"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "regression-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."cabal2spec" or ((hsPkgs.pkgs-errors).buildDepError "cabal2spec"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            ];
          buildable = true;
          };
        };
      };
    }