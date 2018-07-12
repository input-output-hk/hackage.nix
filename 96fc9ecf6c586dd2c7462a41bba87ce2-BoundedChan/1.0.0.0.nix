{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "BoundedChan";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@galois.com>";
        author = "Adam Wick <awick@galois.com>";
        homepage = "";
        url = "";
        synopsis = "Implementation of bounded Chans.";
        description = "This library introduces BoundedChan. BoundedChan works exactly\nlike Chan -- and, indeed, has the exact same interface -- but\nis guaranteed to operate in a bounded amount of space.";
        buildType = "Simple";
      };
      components = {
        "BoundedChan" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }