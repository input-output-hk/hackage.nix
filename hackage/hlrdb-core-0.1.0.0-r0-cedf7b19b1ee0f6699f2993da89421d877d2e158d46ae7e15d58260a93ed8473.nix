{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "hlrdb-core";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "identicalsnowflake@protonmail.com";
      author = "Identical Snowflake";
      homepage = "https://github.com/identicalsnowflake/hlrdb-core";
      url = "";
      synopsis = "High-level Redis Database Core API";
      description = "A library for type-driven interaction with Redis";
      buildType = "Simple";
    };
    components = {
      "hlrdb-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.hedis)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }