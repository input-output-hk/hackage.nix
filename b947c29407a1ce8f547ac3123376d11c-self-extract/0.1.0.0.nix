{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "self-extract";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brandon Chinn <brandon@leapyear.io>";
        author = "Brandon Chinn <brandon@leapyear.io>";
        homepage = "";
        url = "";
        synopsis = "A Haskell library to make self-extracting executables";
        description = "A Haskell library to make self-extracting executables.";
        buildType = "Simple";
      };
      components = {
        self-extract = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.extra
            hsPkgs.file-embed
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.process
            hsPkgs.unix-compat
          ];
        };
      };
    }