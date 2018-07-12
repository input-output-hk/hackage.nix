{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "spata";
          version = "2010.10.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/spata";
        url = "";
        synopsis = "brainless form validation";
        description = "tiny validation library";
        buildType = "Simple";
      };
      components = {
        "spata" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mps
            hsPkgs.mtl
            hsPkgs.dlist
          ];
        };
      };
    }