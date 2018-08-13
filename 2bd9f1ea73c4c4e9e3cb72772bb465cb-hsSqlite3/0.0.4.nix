{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "hsSqlite3";
        version = "0.0.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007 Evgeny Jukov";
      maintainer = "Evgeny Jukov <masloed@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "http://macode.sourceforge.net";
      url = "";
      synopsis = "Sqlite3 bindings";
      description = "Bindings for Sqlite3";
      buildType = "Custom";
    };
    components = {
      "hsSqlite3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.mtl)
          (hsPkgs.state)
        ];
      };
      exes = {
        "hs_sqlite3_test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.utf8-string)
            (hsPkgs.mtl)
            (hsPkgs.state)
          ];
          libs = [ (pkgs.sqlite3) ];
        };
      };
    };
  }