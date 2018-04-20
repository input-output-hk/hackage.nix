{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "selectors";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ropoctl@gmail.com";
        author = "Rob O'Callahan";
        homepage = "";
        url = "";
        synopsis = "CSS Selectors for DOM traversal";
        description = "";
        buildType = "Simple";
      };
      components = {
        selectors = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml-conduit
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.array
          ];
        };
      };
    }