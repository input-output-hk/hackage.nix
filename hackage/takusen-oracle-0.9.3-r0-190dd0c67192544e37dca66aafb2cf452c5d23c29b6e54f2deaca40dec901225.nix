{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.12";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
        ];
        libs = if system.isWindows
          then [ (pkgs."oci" or (errorHandler.sysDepError "oci")) ]
          else [ (pkgs."clntsh" or (errorHandler.sysDepError "clntsh")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.sqlplus.components.exes.sqlplus or (pkgs.pkgsBuildBuild.sqlplus or (errorHandler.buildToolDepError "sqlplus:sqlplus")))
        ];
        buildable = true;
      };
      exes = {
        "takusen_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (!!flags.buildtests) (hsPkgs."takusen-oracle" or (errorHandler.buildDepError "takusen-oracle"));
          buildable = if !flags.buildtests then false else true;
        };
        "miniunit_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if !flags.buildtests then false else true;
        };
      };
    };
  }