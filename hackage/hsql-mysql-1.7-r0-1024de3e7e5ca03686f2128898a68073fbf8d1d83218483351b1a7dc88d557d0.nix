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
        name = "hsql-mysql";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "MySQL driver for HSQL.";
      buildType = "Custom";
    };
    components = {
      "hsql-mysql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsql)
        ];
      };
    };
  }