{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sql-simple-mysql";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/sql-simple";
        url = "";
        synopsis = "mysql backend for sql-simple";
        description = "";
        buildType = "Simple";
      };
      components = {
        sql-simple-mysql = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.sql-simple
            hsPkgs.mysql-simple
            hsPkgs.mysql
            hsPkgs.data-default-class
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }