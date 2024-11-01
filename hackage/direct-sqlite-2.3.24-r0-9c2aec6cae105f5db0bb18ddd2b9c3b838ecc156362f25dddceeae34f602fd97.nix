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
    flags = {
      systemlib = false;
      fulltextsearch = true;
      urifilenames = true;
      haveusleep = true;
      json1 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-sqlite"; version = "2.3.24"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 - 2014 Irene Knapp,\n2014 - 2018 Janne Hellsten,\n2018 - 2019 Sergey Bushnyak";
      maintainer = "Sergey Bushnyak <sergey.bushnyak@sigrlami.eu>";
      author = "Irene Knapp <irene.knapp@icloud.com>";
      homepage = "https://github.com/IreneKnapp/direct-sqlite";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out\nthere, but it fixes a few deficiencies I was finding.  As compared to\nbindings-sqlite3, it is slightly higher-level, in that it supports\nmarshalling of data values to and from the database.  In particular,\nit supports strings encoded as UTF8, and BLOBs represented as\nByteStrings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = if flags.systemlib
          then [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ]
          else pkgs.lib.optional (!system.isWindows && !system.isAndroid) (pkgs."pthread" or (errorHandler.sysDepError "pthread"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }