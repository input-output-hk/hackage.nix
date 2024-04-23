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
    flags = { wai3 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary"; version = "0.12.0"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "Simple and type safe web framework that can be automatically generate API document.";
      description = "Simple and type safe web framework that can be automatically generate API document.\n\n@\n&#123;-&#35; LANGUAGE QuasiQuotes &#35;-&#125;\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = run 3000 . runApiary def $ do\n&#32;&#32;[capture|/:Int|] . (&#34;name&#34; =: pLazyByteString) . stdMethod GET . action $ \\\\age name -> do\n&#32;&#32;&#32;&#32;&#32;&#32;guard (age >= 18)\n&#32;&#32;&#32;&#32;&#32;&#32;contentType &#34;text/html&#34;\n&#32;&#32;&#32;&#32;&#32;&#32;lbs . L.concat $ [&#34;&#60;h1&#62;Hello, &#34;, name, &#34;!&#60;/h1&#62;\\\\n&#34;]\n@\n\n@\n$ curl localhost:3000\n404 Page Notfound.\n$ curl 'localhost:3000/20?name=arice'\n&#60;h1&#62;Hello, arice!&#60;/h1&#62;\n$ curl 'localhost:3000/15?name=bob'\n404 Page Notfound.\n$ curl -XPOST 'localhost:3000/20?name=arice'\n404 Page Notfound.\n@\n\n* Nestable route handling(Apiary Monad; capture, stdMethod and more.).\n\n* type safe route filter.\n\n* auto generate API documentation(https://github.com/philopon/apiary/blob/master/examples/api.hs>).\n\nmore examples: <https://github.com/philopon/apiary/blob/master/examples/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ (if flags.wai3
          then [
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ]
          else [
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ]);
        buildable = true;
      };
      tests = {
        "test-framework" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."apiary" or (errorHandler.buildDepError "apiary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ] ++ (if flags.wai3
            then [
              (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
              (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            ]
            else [
              (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
              (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
            ]);
          buildable = true;
        };
      };
    };
  }