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
      specVersion = "1.10";
      identifier = {
        name = "postgresql-cube";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "leo.zovic@gmail.com";
      author = "inaimathi";
      homepage = "";
      url = "";
      synopsis = "Cube support for postgresql-simple";
      description = "Adding a type definition and toField support for the postgresql-simple library";
      buildType = "Simple";
    };
    components = {
      "postgresql-cube" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-simple)
        ];
      };
    };
  }