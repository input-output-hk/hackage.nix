{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sql-simple-sqlite";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "sqlite backend for sql-simple";
        description = "";
        buildType = "Simple";
      };
      components = {
        "sql-simple-sqlite" = {
          depends  = [
            hsPkgs.base
            hsPkgs.sql-simple
            hsPkgs.sqlite-simple
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged;
        };
      };
    }