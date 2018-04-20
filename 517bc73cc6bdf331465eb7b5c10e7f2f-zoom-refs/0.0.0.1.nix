{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zoom-refs";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Marcin Mrotek, 2015";
        maintainer = "marcin.jan.mrotek@gmail.com";
        author = "Marcin Mrotek";
        homepage = "";
        url = "";
        synopsis = "Zoom (~ Functor) and pairing (~ Applicative) for mutable references.";
        description = "Zoom (a'la lens zoom for State) for TVars, IORefs, and STRefs. TVars and STRef additionaly can be paired to form composite references. Multi-refs that use Traversals instead of Lenses are also available.";
        buildType = "Simple";
      };
      components = {
        zoom-refs = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.stm
          ];
        };
      };
    }