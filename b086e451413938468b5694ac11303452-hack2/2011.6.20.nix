{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack2";
          version = "2011.6.20";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/hack2";
        url = "";
        synopsis = "a Haskell Webserver Interface (V2)";
        description = "Hack2: a Haskell Webserver Interface (V2)";
        buildType = "Simple";
      };
      components = {
        hack2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.enumerator
          ];
        };
      };
    }