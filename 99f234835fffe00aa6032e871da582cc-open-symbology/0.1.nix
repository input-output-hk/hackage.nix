{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "open-symbology";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sseverance@alphaheavy.com";
        author = "Steve Severance";
        homepage = "https://github.com/alphaHeavy/open-symbology";
        url = "";
        synopsis = "";
        description = "An implementation of BSYM in Haskell.";
        buildType = "Simple";
      };
      components = {
        open-symbology = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
      };
    }