{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { wai3 = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apiary";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "Simple and type safe web framework that can be automatically generate API documentation.";
      description = "Simple and type safe web framework that can be automatically generate API documentation.\n\n@\n&#123;-&#35; LANGUAGE QuasiQuotes &#35;-&#125;\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = runApiary (run 3000) def \$ do\n&#32;&#32;[capture|/age::Int|] . ([key|name|] =: pLazyByteString) . method GET . action \$ do\n&#32;&#32;&#32;&#32;&#32;&#32;(age, name) <- [params|age,name|]\n&#32;&#32;&#32;&#32;&#32;&#32;guard (age >= 18)\n&#32;&#32;&#32;&#32;&#32;&#32;contentType &#34;text/html&#34;\n&#32;&#32;&#32;&#32;&#32;&#32;mapM_ lazyBytes [&#34;&#60;h1&#62;Hello, &#34;, name, &#34;!&#60;/h1&#62;\\\\n&#34;]\n@\n\n@\n\$ curl localhost:3000\n404 Page Notfound.\n\$ curl 'localhost:3000/20?name=arice'\n&#60;h1&#62;Hello, arice!&#60;/h1&#62;\n\$ curl 'localhost:3000/15?name=bob'\n404 Page Notfound.\n\$ curl -XPOST 'localhost:3000/20?name=arice'\n404 Page Notfound.\n@\n\n* High performance(benchmark: <https://github.com/philopon/apiary-benchmark>).\n\n* Nestable route handling(Apiary Monad; capture, method and more.).\n\n* Type safe route filter.\n\n* Auto generate API documentation(example: <https://github.com/philopon/apiary/blob/v1.1.0/examples/api.hs>, <https://rawgit.com/philopon/apiary/v1.1.0/examples/api.html>).\n\nmore examples: <https://github.com/philopon/apiary/blob/v1.1.0/examples/>\n\nlive demo: <http://best-haskell.herokuapp.com/> (source code: <https://github.com/philopon/best-haskell>)";
      buildType = "Simple";
    };
    components = {
      "apiary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.case-insensitive)
          (hsPkgs.data-default-class)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.time)
          (hsPkgs.process)
          (hsPkgs.unix-compat)
          (hsPkgs.http-date)
        ] ++ (if flags.wai3
          then [
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ]
          else [
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.conduit)
          ]);
      };
      tests = {
        "test-framework" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.apiary)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
          ] ++ (if flags.wai3
            then [
              (hsPkgs.wai)
              (hsPkgs.wai-extra)
            ]
            else [
              (hsPkgs.wai)
              (hsPkgs.wai-test)
            ]);
        };
      };
    };
  }