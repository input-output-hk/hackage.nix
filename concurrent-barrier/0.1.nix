{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "concurrent-barrier";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@goop.org";
        author = "Jeremy Fitzhardinge";
        homepage = "https://github.com/jsgf/concurrent-barrier";
        url = "";
        synopsis = "Simple thread barriers";
        description = "A very simple package providing thread barriers.";
        buildType = "Simple";
      };
      components = {
        concurrent-barrier = {
          depends  = [ hsPkgs.base ];
        };
      };
    }