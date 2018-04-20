{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack";
          version = "2012.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <e .nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "a Haskell Webserver Interface";
        description = "Hack: a Haskell Webserver Interface\n\n2012.02.06 added FlexibleInstances to fix an error under ghc >=7.2";
        buildType = "Simple";
      };
      components = {
        hack = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.bytestring
          ];
        };
      };
    }