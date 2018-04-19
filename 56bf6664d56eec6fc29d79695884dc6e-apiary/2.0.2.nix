{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary";
          version = "2.0.2";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "Simple and type safe web framework that generate web API documentation.";
        description = "Simple and type safe web framework that can be automatically generate API documentation.\n\n@\n&#123;-&#35; LANGUAGE QuasiQuotes &#35;-&#125;\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = runApiary (run 3000) def \$ do\n&#32;&#32;[capture|/age::Int|] . ([key|name|] =: pLazyByteString) . method GET . action \$ do\n&#32;&#32;&#32;&#32;&#32;&#32;(age, name) <- [params|age,name|]\n&#32;&#32;&#32;&#32;&#32;&#32;guard (age >= 18)\n&#32;&#32;&#32;&#32;&#32;&#32;contentType &#34;text/html&#34;\n&#32;&#32;&#32;&#32;&#32;&#32;mapM_ appendLazyBytes [&#34;&#60;h1&#62;Hello, &#34;, name, &#34;!&#60;/h1&#62;\\\\n&#34;]\n@\n\n@\n\$ curl localhost:3000\n404 Page Notfound.\n\$ curl 'localhost:3000/20?name=arice'\n&#60;h1&#62;Hello, arice!&#60;/h1&#62;\n\$ curl 'localhost:3000/15?name=bob'\n404 Page Notfound.\n\$ curl -XPOST 'localhost:3000/20?name=arice'\n404 Page Notfound.\n@\n\n* High performance(benchmark: <https://github.com/philopon/apiary-benchmark>).\n\n* Nestable route handling(Apiary Monad; capture, method and more.).\n\n* Type safe route filter.\n\n* Auto generate API documentation(example: <http://find-hackage.herokuapp.com/api/documentation>).\n\nmore examples: <https://github.com/philopon/apiary/blob/v1.4.0/examples/>\n\nlive demo: <http://find-hackage.herokuapp.com/> (source code: <https://github.com/philopon/find-hackage>)";
        buildType = "Simple";
      };
      components = {
        apiary = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.exceptions
            hsPkgs.resourcet
            hsPkgs.http-types
            hsPkgs.mime-types
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.bytestring-read
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.case-insensitive
            hsPkgs.vault
            hsPkgs.aeson
            hsPkgs.data-default-class
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.time
            hsPkgs.process
            hsPkgs.unix-compat
            hsPkgs.http-date
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.stringsearch
            hsPkgs.web-routing
            hsPkgs.types-compat
          ];
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.apiary
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.directory
              hsPkgs.aeson
            ];
          };
        };
      };
    }