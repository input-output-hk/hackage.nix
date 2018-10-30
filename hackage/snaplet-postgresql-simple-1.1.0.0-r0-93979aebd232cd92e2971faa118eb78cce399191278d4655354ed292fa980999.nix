{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snaplet-postgresql-simple";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mightybyte@gmail.com";
      author = "Doug Beardsley";
      homepage = "https://github.com/mightybyte/snaplet-postgresql-simple";
      url = "";
      synopsis = "postgresql-simple snaplet for the Snap Framework";
      description = "This snaplet contains support for using the Postgresql\ndatabase with a Snap Framework application via the\npostgresql-simple package.  It also includes an\nauthentication backend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clientsession)
          (hsPkgs.configurator)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.heist)
            (hsPkgs.lens)
            (hsPkgs.postgresql-simple)
            (hsPkgs.mtl)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snaplet-postgresql-simple)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.xmlhtml)
          ];
        };
      };
    };
  }