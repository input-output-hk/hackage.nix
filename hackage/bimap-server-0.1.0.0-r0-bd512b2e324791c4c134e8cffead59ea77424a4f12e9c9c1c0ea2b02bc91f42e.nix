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
        name = "bimap-server";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Two-column database server.";
      description = "A server that stores a database with two columns, where the elements in each column are of the same type.\nOperations are fast, although memory usage increases with the number of rows. The implementation is based\nin bimaps.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bimap)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.unix)
          (hsPkgs.directory)
        ];
      };
    };
  }