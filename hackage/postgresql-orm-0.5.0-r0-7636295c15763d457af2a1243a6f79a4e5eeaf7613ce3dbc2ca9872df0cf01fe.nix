{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "postgresql-orm"; version = "0.5.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Levy and David Mazieres";
      homepage = "";
      url = "";
      synopsis = "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL.";
      description = "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL. See\n\"Database.PostgreSQL.ORM\" for documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.postgresql-simple)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "pg_migrate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prim)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.postgresql-simple)
            (hsPkgs.process)
            (hsPkgs.time)
            ];
          };
        };
      };
    }