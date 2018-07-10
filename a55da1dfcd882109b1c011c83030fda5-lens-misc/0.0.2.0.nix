{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-misc";
          version = "0.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/lens-misc#readme";
        url = "";
        synopsis = "Miscellaneous lens utilities.";
        description = "Handy functions when using lens.";
        buildType = "Simple";
      };
      components = {
        lens-misc = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.tagged
            hsPkgs.template-haskell
          ];
        };
      };
    }