{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "thorn";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Yusuke Matsushita";
        maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
        author = "Yusuke Matsushita";
        homepage = "https://github.com/Kinokkory/Thorn";
        url = "";
        synopsis = "Template Haskell Library";
        description = "Template Haskell Library";
        buildType = "Simple";
      };
      components = {
        thorn = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.bifunctors
            hsPkgs.profunctors
          ];
        };
      };
    }