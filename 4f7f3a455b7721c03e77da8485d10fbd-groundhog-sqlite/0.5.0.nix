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
      specVersion = "1.6";
      identifier = {
        name = "groundhog-sqlite";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Sqlite3 backend for the groundhog library";
      description = "It depends on direct-sqlite library which includes Sqlite C sources, so there are no system dependencies.";
      buildType = "Simple";
    };
    components = {
      "groundhog-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.groundhog)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.direct-sqlite)
          (hsPkgs.resource-pool)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }