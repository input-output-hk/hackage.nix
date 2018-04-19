{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      wai3 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary";
          version = "0.12.5";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "Simple and type safe web framework that can be automatically generate API documentation.";
        description = "Simple and type safe web framework that can be automatically generate API documentation.\n\n@\n&#123;-&#35; LANGUAGE QuasiQuotes &#35;-&#125;\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = run 3000 . runApiary def \$ do\n&#32;&#32;[capture|/:Int|] . (&#34;name&#34; =: pLazyByteString) . stdMethod GET . action \$ \\\\age name -> do\n&#32;&#32;&#32;&#32;&#32;&#32;guard (age >= 18)\n&#32;&#32;&#32;&#32;&#32;&#32;contentType &#34;text/html&#34;\n&#32;&#32;&#32;&#32;&#32;&#32;lbs . L.concat \$ [&#34;&#60;h1&#62;Hello, &#34;, name, &#34;!&#60;/h1&#62;\\\\n&#34;]\n@\n\n@\n\$ curl localhost:3000\n404 Page Notfound.\n\$ curl 'localhost:3000/20?name=arice'\n&#60;h1&#62;Hello, arice!&#60;/h1&#62;\n\$ curl 'localhost:3000/15?name=bob'\n404 Page Notfound.\n\$ curl -XPOST 'localhost:3000/20?name=arice'\n404 Page Notfound.\n@\n\n* Nestable route handling(Apiary Monad; capture, stdMethod and more.).\n\n* type safe route filter.\n\n* auto generate API documentation(example: <https://github.com/philopon/apiary/blob/v0.12.5/examples/api.hs>, <https://rawgit.com/philopon/apiary/v0.12.5/examples/api.html>).\n\nmore examples: <https://github.com/philopon/apiary/blob/v0.12.5/examples/>";
        buildType = "Simple";
      };
      components = {
        apiary = {
          depends  = ([
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.transformers-base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.data-default-class
            hsPkgs.reflection
            hsPkgs.http-types
            hsPkgs.mime-types
            hsPkgs.exceptions
            hsPkgs.blaze-html
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged) ++ (if _flags.wai3
            then [
              hsPkgs.wai
              hsPkgs.wai-extra
            ]
            else [
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.conduit
            ]);
        };
        tests = {
          test-framework = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.apiary
              hsPkgs.bytestring
              hsPkgs.http-types
            ] ++ (if _flags.wai3
              then [
                hsPkgs.wai
                hsPkgs.wai-extra
              ]
              else [
                hsPkgs.wai
                hsPkgs.wai-test
              ]);
          };
        };
      };
    }