{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "texts";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Common things for text";
        description = "Common things for text";
        buildType = "Simple";
      };
      components = {
        texts = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.HUnit
            hsPkgs.network
            hsPkgs.time
            hsPkgs.lists
          ];
        };
      };
    }