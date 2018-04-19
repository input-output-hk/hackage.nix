{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "moe";
          version = "2009.9.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/moe";
        url = "";
        synopsis = "html with style";
        description = "a purely functional html combinator with a clean syntax";
        buildType = "Simple";
      };
      components = {
        moe = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mps
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.dlist
          ];
        };
      };
    }