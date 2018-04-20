{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "classify";
          version = "2008.10.20.1";
        };
        license = "BSD-3-Clause";
        copyright = "2004-2008, Lemmih";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "Lemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Library for classification of media files.";
        description = "";
        buildType = "Simple";
      };
      components = {
        classify = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }