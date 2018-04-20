{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nimber";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013 Anders Kaseorg";
        maintainer = "Anders Kaseorg <andersk@mit.edu>";
        author = "Anders Kaseorg <andersk@mit.edu>";
        homepage = "http://andersk.mit.edu/haskell/nimber/";
        url = "";
        synopsis = "Finite nimber arithmetic";
        description = "The finite nimbers, 'Nimber', are a quadratically closed field of\ncharacteristic 2 introduced in combinatorial game theory.";
        buildType = "Simple";
      };
      components = {
        nimber = {
          depends  = [
            hsPkgs.arithmoi
            hsPkgs.base
          ];
        };
      };
    }