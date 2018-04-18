{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hs-gchart";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Deepak Jois <deepak.jois@gmail.com>";
        maintainer = "deepak.jois@gmail.com";
        author = "Deepak Jois";
        homepage = "http://github.com/deepakjois/hs-gchart";
        url = "";
        synopsis = "Haskell wrapper for the Google Chart API";
        description = "";
        buildType = "Simple";
      };
      components = {
        hs-gchart = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }