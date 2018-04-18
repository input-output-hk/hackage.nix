{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Imlib";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cgibbard@gmail.com";
        author = "Cale Gibbard";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Haskell binding for Imlib 2";
        buildType = "Custom";
      };
      components = {
        Imlib = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.Imlib2 ];
        };
      };
    }