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
      specVersion = "1.2";
      identifier = {
        name = "snowflake-server";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jiakai0419@gmail.com";
      author = "KaiJia";
      homepage = "";
      url = "";
      synopsis = "snowflake http server";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snowflake-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.snowflake-core)
            (hsPkgs.containers)
            (hsPkgs.random)
          ];
        };
      };
    };
  }