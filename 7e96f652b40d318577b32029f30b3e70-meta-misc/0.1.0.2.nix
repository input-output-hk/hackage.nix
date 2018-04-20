{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "meta-misc";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Byron James Johnson";
        maintainer = "ByronJohnsonFP@gmail.com";
        author = "Byron James Johnson";
        homepage = "";
        url = "";
        synopsis = "Utility library providing miscellaneous meta-programming utilities.";
        description = "Utility library providing miscellaneous meta-programming utilities.";
        buildType = "Simple";
      };
      components = {
        meta-misc = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.loch-th
          ];
        };
      };
    }