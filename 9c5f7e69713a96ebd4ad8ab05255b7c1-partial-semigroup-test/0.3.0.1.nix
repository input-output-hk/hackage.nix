{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enable-hedgehog = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.21";
        identifier = {
          name = "partial-semigroup-test";
          version = "0.3.0.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/partial-semigroup";
        url = "";
        synopsis = "Testing utilities for the partial-semigroup package";
        description = "Testing utilities for the @partial-semigroup@ package.";
        buildType = "Simple";
      };
      components = {
        partial-semigroup-test = {
          depends  = pkgs.lib.optional _flags.enable-hedgehog hsPkgs.partial-semigroup-hedgehog;
        };
      };
    }