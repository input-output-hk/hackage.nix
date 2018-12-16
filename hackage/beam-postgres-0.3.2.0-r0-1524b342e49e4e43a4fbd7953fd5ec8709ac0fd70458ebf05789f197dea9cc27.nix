{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "beam-postgres";
        version = "0.3.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "http://tathougies.github.io/beam/user-guide/backends/beam-postgres";
      url = "";
      synopsis = "Connection layer between beam and postgres";
      description = "Beam driver for <https://www.postgresql.org/ PostgreSQL>, an advanced open-source RDBMS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.beam-migrate)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.lifted-base)
          (hsPkgs.free)
          (hsPkgs.time)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.conduit)
          (hsPkgs.aeson)
          (hsPkgs.uuid-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.network-uri)
          (hsPkgs.unordered-containers)
          (hsPkgs.tagged)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }