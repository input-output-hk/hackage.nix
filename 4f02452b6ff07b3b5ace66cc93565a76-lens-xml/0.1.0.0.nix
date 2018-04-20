{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-xml";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Nick Partridge";
        maintainer = "nkpart@gmail.com";
        author = "Nick Partridge";
        homepage = "https://github.com/nkpart/lens-xml#readme";
        url = "";
        synopsis = "Lenses for the xml package.";
        description = "Lenses for the xml package.";
        buildType = "Simple";
      };
      components = {
        lens-xml = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.xml
          ];
        };
        tests = {
          lens-xml-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens-xml
              hsPkgs.xml
              hsPkgs.lens
            ];
          };
        };
      };
    }