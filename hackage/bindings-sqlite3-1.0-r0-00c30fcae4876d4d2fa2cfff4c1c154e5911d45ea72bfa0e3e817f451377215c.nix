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
        name = "bindings-sqlite3";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-sqlite3";
      url = "";
      synopsis = "Low level bindings to sqlite3.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-sqlite3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-common)
        ];
        pkgconfig = [
          (pkgconfPkgs.sqlite3)
        ];
      };
    };
  }