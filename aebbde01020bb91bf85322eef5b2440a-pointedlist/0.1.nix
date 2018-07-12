{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "pointedlist";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeffwheeler@gmail.com";
        author = "Jeff Wheeler";
        homepage = "";
        url = "";
        synopsis = "A zipper-like comonad which works as a list, tracking a position.";
        description = "A PointedList tracks the position in a non-empty list which works similarly\nto a zipper. A current item is always required, and therefore the list may\nnever be empty.";
        buildType = "Simple";
      };
      components = {
        "pointedlist" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
      };
    }