{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.0";
      identifier = {
        name = "moto-postgresql";
        version = "0.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ren@ren!zone";
      author = "Renzo Carbonara";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL-based migrations registry for moto.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "moto-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-simple)
          (hsPkgs.moto)
          (hsPkgs.safe-exceptions)
        ];
      };
    };
  }