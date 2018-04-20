{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sql-simple";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/sql-simple";
        url = "";
        synopsis = "common middle-level sql client.";
        description = "please read README.md <https://github.com/philopon/sql-simple/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        sql-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }