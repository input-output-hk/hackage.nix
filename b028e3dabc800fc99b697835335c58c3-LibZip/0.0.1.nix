{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "LibZip";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sergey Astanin <s.astanin@gmail.com>";
        author = "Sergey Astanin";
        homepage = "http://bitbucket.org/jetxee/hs-libzip/";
        url = "";
        synopsis = "Partial bindings to libzip to read zip archives.";
        description = "This package provides basic read-only access to zip-archives.\nIt is produced with @c2hs@ for @libzip@ ver. 0.9.";
        buildType = "Simple";
      };
      components = {
        LibZip = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.haskell98
          ];
        };
      };
    }