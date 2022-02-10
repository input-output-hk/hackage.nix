{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary"; version = "1.4.1"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "Simple and type safe web framework that generate web API documentation.";
      description = "Simple and type safe web framework that can be automatically generate API documentation.\n\n@\n&#123;-&#35; LANGUAGE QuasiQuotes &#35;-&#125;\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = runApiary (run 3000) def $ do\n&#32;&#32;[capture|/age::Int|] . ([key|name|] =: pLazyByteString) . method GET . action $ do\n&#32;&#32;&#32;&#32;&#32;&#32;(age, name) <- [params|age,name|]\n&#32;&#32;&#32;&#32;&#32;&#32;guard (age >= 18)\n&#32;&#32;&#32;&#32;&#32;&#32;contentType &#34;text/html&#34;\n&#32;&#32;&#32;&#32;&#32;&#32;mapM_ appendLazyBytes [&#34;&#60;h1&#62;Hello, &#34;, name, &#34;!&#60;/h1&#62;\\\\n&#34;]\n@\n\n@\n$ curl localhost:3000\n404 Page Notfound.\n$ curl 'localhost:3000/20?name=arice'\n&#60;h1&#62;Hello, arice!&#60;/h1&#62;\n$ curl 'localhost:3000/15?name=bob'\n404 Page Notfound.\n$ curl -XPOST 'localhost:3000/20?name=arice'\n404 Page Notfound.\n@\n\n* High performance(benchmark: <https://github.com/philopon/apiary-benchmark>).\n\n* Nestable route handling(Apiary Monad; capture, method and more.).\n\n* Type safe route filter.\n\n* Auto generate API documentation(example: <http://find-hackage.herokuapp.com/api/documentation>).\n\nmore examples: <https://github.com/philopon/apiary/blob/v1.4.0/examples/>\n\nlive demo: <http://find-hackage.herokuapp.com/> (source code: <https://github.com/philopon/find-hackage>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-read" or (errorHandler.buildDepError "bytestring-read"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."http-date" or (errorHandler.buildDepError "http-date"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          (hsPkgs."web-routing" or (errorHandler.buildDepError "web-routing"))
          (hsPkgs."types-compat" or (errorHandler.buildDepError "types-compat"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."apiary" or (errorHandler.buildDepError "apiary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            ];
          buildable = true;
          };
        };
      };
    }