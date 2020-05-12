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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-mesos"; version = "0.20.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Bindings to the Apache Mesos platform.\n\n<http://mesos.apache.org/ Apache Mesos> is a cluster manager that simplifies the complexity of running applications on a shared pool of servers.\n\nNote that this package currently requires 'libmesos' to be installed on your development system in order to build.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          ];
        libs = [
          (pkgs."mesos" or (errorHandler.sysDepError "mesos"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
        buildable = true;
        };
      exes = {
        "test-executor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-mesos" or (errorHandler.buildDepError "hs-mesos"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          libs = [
            (pkgs."mesos" or (errorHandler.sysDepError "mesos"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ];
          buildable = true;
          };
        "test-framework" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-mesos" or (errorHandler.buildDepError "hs-mesos"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          libs = [
            (pkgs."mesos" or (errorHandler.sysDepError "mesos"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-mesos" or (errorHandler.buildDepError "hs-mesos"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
            ];
          buildable = true;
          };
        };
      };
    }