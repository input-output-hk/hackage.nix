{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "libexpect";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stroantree@gmail.com";
        author = "Stephen Roantree";
        homepage = "";
        url = "";
        synopsis = "Library for interacting with console applications via pseudoterminals.";
        description = "Bindings to libexpect.";
        buildType = "Configure";
      };
      components = {
        libexpect = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.unix
          ];
          libs = [ pkgs.expect ];
        };
      };
    }