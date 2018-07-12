{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack";
          version = "2009.10.30";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <e .nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "a Haskell Webserver Interface";
        description = "Hack: a Haskell Webserver Interface";
        buildType = "Simple";
      };
      components = {
        "hack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.bytestring
          ];
        };
      };
    }