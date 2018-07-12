{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "null-canvas";
          version = "0.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 The University of Kansas";
        maintainer = "gtener@gmail.com";
        author = "Andy Gill, Krzysztof Skrzętnicki";
        homepage = "https://github.com/Tener/null-canvas";
        url = "";
        synopsis = "HTML5 Canvas Graphics Library - forked Blank Canvas";
        description = "A Haskell port of the HTML5 Canvas API.\nblank-canvas works by providing a web service that\ndisplays the users' Haskell commands inside a browser.";
        buildType = "Simple";
      };
      components = {
        "null-canvas" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.scotty
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.stm
            hsPkgs.split
            hsPkgs.filepath
          ];
        };
      };
    }