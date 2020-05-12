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
    flags = { odbc = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sqlcli"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgean@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "http://hub.darcs.net/mihaigiurgeanu/sqlcli";
      url = "";
      synopsis = "Bindings for SQL/CLI (ODBC) C API.";
      description = "See [NEWS](https://hub.darcs.net/mihaigiurgeanu/sqlcli/browse/NEWS)\nfor the ChangeLog.\nProvides bindings to all the SQL/CLI C API standard.\nSQL/CLI C API is a subset of ODBC. You can use this package to\naccess databases through ODBC. It is tested on Windows, Linux\nand Mac operating Systems whith Postgres, Oracle and SQLite.\nThis package also contains Haskell wrapers to the foreign C calls and\nutilities to make using the SQL/CLI easier for the Haskell\nprogrammer.\nYou can use this to acces any database through ODBC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = (pkgs.lib).optionals (flags.odbc) (if system.isWindows
          then [ (pkgs."odbc32" or (errorHandler.sysDepError "odbc32")) ]
          else [ (pkgs."odbc" or (errorHandler.sysDepError "odbc")) ]);
        buildable = true;
        };
      };
    }