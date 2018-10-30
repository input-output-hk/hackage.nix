{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hsql-sqlite3";
        version = "1.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@googlemail.com";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "SQLite3 driver for HSQL.";
      description = "A Haskell Interface to SQLite 3 via libsqlite3\nin the standard library path.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsql)
        ];
        libs = [ (pkgs."sqlite3") ];
      };
    };
  }