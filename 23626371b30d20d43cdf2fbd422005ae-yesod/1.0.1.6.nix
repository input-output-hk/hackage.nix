{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      blaze_html_0_5 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod";
          version = "1.0.1.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Creation of type-safe, RESTful web applications.";
        description = "A RESTful web framework with strong compile-time guarantees of correctness. It also affords space efficient code, highly concurrent loads, and portability to many deployment backends (via the wai package), from CGI to stand-alone serving.\n\nYesod also focuses on developer productivity. Yesod integrates well with tools for all your basic web development (wai, persistent, and shakespeare/hamlet)\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, including on the supporting packages mentioned above.";
        buildType = "Simple";
      };
      components = {
        yesod = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.yesod-json
            hsPkgs.yesod-persistent
            hsPkgs.yesod-form
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.wai-logger
            hsPkgs.hamlet
            hsPkgs.shakespeare-js
            hsPkgs.shakespeare-css
            hsPkgs.warp
          ] ++ (if _flags.blaze_html_0_5
            then [
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
            ]
            else [ hsPkgs.blaze-html ]);
        };
        exes = {
          yesod = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.shakespeare-text
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.template-haskell
              hsPkgs.directory
              hsPkgs.Cabal
              hsPkgs.unix-compat
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.http-types
              hsPkgs.blaze-builder
              hsPkgs.filepath
              hsPkgs.fast-logger
              hsPkgs.process
            ];
          };
        };
      };
    }