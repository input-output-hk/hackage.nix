{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "safecopy";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lemmih@gmail.com";
        author = "David Himmelstrup";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Project description";
        buildType = "Custom";
      };
      components = {
        safecopy = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.binary
          ];
        };
      };
    }