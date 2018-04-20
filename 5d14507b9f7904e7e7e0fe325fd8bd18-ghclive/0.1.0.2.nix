{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ghclive";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shae@ScannedInAvian.com";
        author = "Shae Erisson";
        homepage = "http://github.com/shapr/ghclive/";
        url = "";
        synopsis = "Interactive Haskell interpreter in a browser.";
        description = "ghclive is an interactive multi-user Haskell interpreter in a browser.\nIt mixes a pastebin with an interpreter and is designed for remote teaching.";
        buildType = "Simple";
      };
      components = {
        ghclive = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-svg
            hsPkgs.ghc-prim
            hsPkgs.text
            hsPkgs.containers
          ];
        };
        exes = {
          ghclive = {
            depends  = [
              hsPkgs.ghclive
              hsPkgs.yesod-static
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.wai-websockets
              hsPkgs.websockets
              hsPkgs.wai
              hsPkgs.time
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.blaze-markup
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.yesod
              hsPkgs.warp
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.hint
              hsPkgs.directory
              hsPkgs.file-embed
              hsPkgs.base
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }