{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "database-migrate";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mark Hibberd";
      maintainer = "Mark Hibberd <mark@hibberd.id.au>";
      author = "Mark Hibberd <mark@hibberd.id.au>";
      homepage = "https://github.com/markhibberd/database-migrate";
      url = "";
      synopsis = "Database versioning and migration";
      description = "A database versioning and migration library.\n\n/Note/: This library is under heavy development, currently\nthe PostgreSQL implementation is functional, but\nexpected to change. It is intended that a type safe\nmigration api, command line tools and MySql support be added\nbefore this library will be considered stable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.postgresql-simple)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.cmdargs)
        ];
      };
    };
  }