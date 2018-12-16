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
      specVersion = "1.10";
      identifier = {
        name = "streaming-postgresql-simple";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "";
      url = "";
      synopsis = "Stream postgresql-query results using the streaming library";
      description = "This package provides incremental streaming functions for the @postgresql-simple@ library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resourcet)
          (hsPkgs.safe-exceptions)
          (hsPkgs.streaming)
          (hsPkgs.transformers)
        ];
      };
    };
  }