{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hsql-postgresql";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "PostgreSQL driver for HSQL.";
      buildType = "Custom";
    };
    components = {
      "hsql-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsql)
        ];
        libs = [ (pkgs."pq") ];
      };
    };
  }