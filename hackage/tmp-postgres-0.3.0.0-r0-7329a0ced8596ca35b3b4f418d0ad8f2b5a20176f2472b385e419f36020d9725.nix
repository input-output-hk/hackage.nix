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
      identifier = { name = "tmp-postgres"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/tmp-postgres#readme";
      url = "";
      synopsis = "Start and stop a temporary postgres for testing";
      description = "This module provides functions creating a temporary postgres instance on a random port for testing.\n\n> result <- start []\n> case result of\n>   Left err -> print err\n>   Right tempDB -> do\n>     -- Do stuff\n>     stop tempDB\n\nThe are few different methods for starting @postgres@ which provide different\nmethods of dealing with @stdout@ and @stderr@.\n\nThe start methods use a config based on the one used by pg_tmp (http://ephemeralpg.org/), but can be overriden\nby different values to the first argument of the start functions.\n\nMacOS and Linux are support. Windows is not.\n\nRequires PostgreSQL 9.3+\n\nWARNING!!\nUbuntu's PostgreSQL installation does not put @initdb@ on the @PATH@. We need to add it manually. The necessary binaries are in the @\\/usr\\/lib\\/postgresql\\/VERSION\\/bin\\/@ directory, and should be added to the @PATH@\n\n> echo \"export PATH=$PATH:/usr/lib/postgresql/VERSION/bin/\" >> /home/ubuntu/.bashrc\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."postgres-options" or (errorHandler.buildDepError "postgres-options"))
          (hsPkgs."port-utils" or (errorHandler.buildDepError "port-utils"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."tmp-postgres" or (errorHandler.buildDepError "tmp-postgres"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }