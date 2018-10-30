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
      specVersion = "1.8";
      identifier = {
        name = "qudb";
        version = "0.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Jan Stępień";
      author = "Piotr Monarski, Jan Stępień";
      homepage = "https://github.com/jstepien/qudb";
      url = "";
      synopsis = "Quite Useless DB";
      description = "QUDB is a simple relational database meant to be a Haskell equivalent of\nthe SQLite executable. It currently supports a minimal subset of SQL. See the\n`test` directory for examples of accepted queries.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "qudb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.snappy)
            (hsPkgs.directory)
            (hsPkgs.mtl)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }