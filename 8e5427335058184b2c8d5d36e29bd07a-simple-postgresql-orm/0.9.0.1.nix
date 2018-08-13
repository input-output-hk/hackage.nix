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
        name = "simple-postgresql-orm";
        version = "0.9.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Aryeh Levy";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "Connector package for integrating postgresql-orm with the Simple web framework";
      description = "Connector package for integrating postgresql-orm with the Simple web framework";
      buildType = "Simple";
    };
    components = {
      "simple-postgresql-orm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.postgresql-simple)
          (hsPkgs.postgresql-orm)
          (hsPkgs.resource-pool)
          (hsPkgs.simple)
          (hsPkgs.transformers)
        ];
      };
    };
  }