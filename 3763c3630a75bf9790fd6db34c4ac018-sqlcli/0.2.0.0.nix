{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      odbc = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sqlcli";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgean@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "http://hub.darcs.net/mihaigiurgeanu/sqlcli";
      url = "";
      synopsis = "Sql Call-Level Interface bindings for Haskell.";
      description = "Provides bindings to SQL/CLI C API, importing\nall foreign functions defined in the specifications,\ndefining types and constants used in the specification.\nAlso it provides some wrapers to the foreign C calls and\nutilities to make using the SQL/CLI easier for the Haskell\nprogrammer.";
      buildType = "Simple";
    };
    components = {
      "sqlcli" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.logging)
          (hsPkgs.text)
        ];
        libs = pkgs.lib.optionals (_flags.odbc) (if system.isWindows
          then [ (pkgs.odbc32) ]
          else [ (pkgs.odbc) ]);
      };
    };
  }