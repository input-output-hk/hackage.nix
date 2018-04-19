{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blank-canvas";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 The University of Kansas";
        maintainer = "andygill@ku.edu";
        author = "Andy Gill";
        homepage = "http://ittc.ku.edu/csdl/fpg/Tools/BlankCanvas";
        url = "";
        synopsis = "HTML5 Canvas Graphics Library";
        description = "A Haskell port of the HTML5 Canvas API.\nblank-canvas works by providing a web service that\ndisplays the users' Haskell commands inside a browser.";
        buildType = "Simple";
      };
      components = {
        blank-canvas = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.scotty
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.stm
          ];
        };
      };
    }