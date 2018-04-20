{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "family-tree";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nvd1234@gmail.com";
        author = "Nathan \"Taneb\" van Doorn";
        homepage = "https://github.com/Taneb/family-tree";
        url = "https://github.com/Taneb/family-tree";
        synopsis = "A family tree library for the Haskell programming language.";
        description = "A family tree library for the Haskell programming language.\nUses \"Control.Lens\" for modification and \"Data.Binary\" for\nserialization.";
        buildType = "Simple";
      };
      components = {
        family-tree = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.binary
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.time
            hsPkgs.intervals
          ];
        };
      };
    }