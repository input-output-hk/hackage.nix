{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "urlpath";
          version = "8.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018 Athan Clark";
        maintainer = "athan.clark@localcooking.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/urlpath#readme";
        url = "";
        synopsis = "Painfully simple URL deployment.";
        description = "Please see the README on Github at <https://github.com/githubuser/urlpath#readme>";
        buildType = "Simple";
      };
      components = {
        "urlpath" = {
          depends  = [
            hsPkgs.attoparsec-uri
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.monad-control-aligned
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.path-extra
            hsPkgs.resourcet
            hsPkgs.split
            hsPkgs.strict
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.vector
          ];
        };
      };
    }