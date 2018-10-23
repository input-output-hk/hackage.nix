{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "hsSqlite3";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "http://bitbucket.org/mauricio/hssqlite3";
      url = "";
      synopsis = "Database package using sqlite3.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hsSqlite3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-sqlite3)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }