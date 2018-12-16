{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { production = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rfc-psql";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#readme";
      url = "";
      synopsis = "The PostgreSQL extensions from the Robert Fischer Commons.";
      description = "Provides best-of-breed support for PostgreSQL, currently based on @postgresql-typed@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.postgresql-typed)
          (hsPkgs.resource-pool)
          (hsPkgs.rfc-env)
          (hsPkgs.rfc-prelude)
          (hsPkgs.transformers)
        ];
      };
    };
  }