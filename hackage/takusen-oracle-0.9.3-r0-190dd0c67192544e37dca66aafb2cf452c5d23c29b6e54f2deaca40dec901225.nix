{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "takusen-oracle"; version = "0.9.3"; };
      license = "BSD-3-Clause";
      copyright = "2003-2009, Alistair Bayley, Oleg Kiselyov, 2013, Pavel Ryzhov";
      maintainer = "paul@paulrz.cz";
      author = "Alistair Bayley, Oleg Kiselyov, Pavel Ryzhov";
      homepage = "https://github.com/paulrzcz/takusen-oracle.git";
      url = "https://github.com/paulrzcz/takusen-oracle.git";
      synopsis = "Database library with left-fold interface for Oracle.";
      description = "Takusen-Oracle is a Oracle access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\nIt is based on original Takusen library. It was just upgraded to support\nOracle 11gR2/12c instant client and GHC 7.4.2 and higher.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        libs = if system.isWindows
          then [ (pkgs."oci" or ((hsPkgs.pkgs-errors).sysDepError "oci")) ]
          else [
            (pkgs."clntsh" or ((hsPkgs.pkgs-errors).sysDepError "clntsh"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.sqlplus or (pkgs.buildPackages.sqlplus or ((hsPkgs.pkgs-errors).buildToolDepError "sqlplus")))
          ];
        buildable = true;
        };
      exes = {
        "takusen_tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (!(!flags.buildtests)) (hsPkgs."takusen-oracle" or ((hsPkgs.pkgs-errors).buildDepError "takusen-oracle"));
          buildable = if !flags.buildtests then false else true;
          };
        "miniunit_tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = if !flags.buildtests then false else true;
          };
        };
      };
    }