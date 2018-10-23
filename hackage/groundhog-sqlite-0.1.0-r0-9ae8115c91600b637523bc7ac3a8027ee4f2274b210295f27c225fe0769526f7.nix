{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { systemlib = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "groundhog-sqlite";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Sqlite3 backend for the groundhog library";
      description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
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
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.blaze-builder)
          (hsPkgs.pool-conduit)
          (hsPkgs.unordered-containers)
        ];
        libs = pkgs.lib.optional (flags.systemlib) (pkgs."sqlite3");
      };
    };
  }