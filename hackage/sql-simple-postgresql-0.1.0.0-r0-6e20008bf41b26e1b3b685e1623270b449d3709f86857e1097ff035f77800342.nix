{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sql-simple-postgresql";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "postgresql backend for sql-simple";
      description = "";
      buildType = "Simple";
    };
    components = {
      "sql-simple-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.sql-simple)
          (hsPkgs.postgresql-simple)
          (hsPkgs.data-default-class)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.tagged);
      };
    };
  }