{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blank-canvas";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 The University of Kansas";
        maintainer = "andygill@ku.edu";
        author = "Andy Gill and Ryan Scott";
        homepage = "https://github.com/ku-fpg/blank-canvas/wiki";
        url = "";
        synopsis = "HTML5 Canvas Graphics Library";
        description = "@blank-canvas@ is a Haskell binding to the complete\n<https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API HTML5 Canvas API>.\n@blank-canvas@ allows Haskell users to write, in Haskell,\ninteractive images onto their web browsers. @blank-canvas@\ngives the user a single full-window canvas, and provides\nmany well-documented functions for rendering\nimages.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\nmodule Main where\nimport Graphics.Blank                     -- import the blank canvas\n\nmain = blankCanvas 3000 \$ \\\\ context -> do -- start blank canvas on port 3000\n&#32;&#32;send context \$ do                       -- send commands to this specific context\n&#32;&#32;&#32;&#32;moveTo(50,50)\n&#32;&#32;&#32;&#32;lineTo(200,100)\n&#32;&#32;&#32;&#32;lineWidth 10\n&#32;&#32;&#32;&#32;strokeStyle \\\"red\\\"\n&#32;&#32;&#32;&#32;stroke()                              -- this draws the ink into the canvas\n@\n\n<<https://github.com/ku-fpg/blank-canvas/wiki/images/Red_Line.png>>\n\nFor more details, read the <https://github.com/ku-fpg/blank-canvas/wiki blank-canvas wiki>.\n";
        buildType = "Simple";
      };
      components = {
        blank-canvas = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base64-bytestring
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.http-types
            hsPkgs.mime-types
            hsPkgs.kansas-comet
            hsPkgs.scotty
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.vector
          ];
        };
        tests = {
          wiki-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.blank-canvas
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.shake
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.vector
            ];
          };
        };
      };
    }