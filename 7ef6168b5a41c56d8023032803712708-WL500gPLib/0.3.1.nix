{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "WL500gPLib";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Vasyl Pasternak <vasyl.pasternak@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A simple library to access to the WL 500gP router\nfrom the Haskell code";
        description = "";
        buildType = "Simple";
      };
      components = {
        WL500gPLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.curl
            hsPkgs.tagsoup
            hsPkgs.mtl
          ];
        };
        exes = {
          test = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }