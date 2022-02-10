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
    flags = { monadlogger = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "Simple web framework inspired by scotty.";
      description = "Simple web framework inspired by scotty.\n\n@\n&#123;-&#35; LANGUAGE QuasiQuotes &#35;-&#125;\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = run 3000 . runApiaryT def $ do\n&#32;&#32;[capture|/:String|] $ do\n&#32;&#32;&#32;&#32;stdMethod GET . action $ \\\\name -> do\n&#32;&#32;&#32;&#32;&#32;&#32;contentType \"text/html\"\n&#32;&#32;&#32;&#32;&#32;&#32;lbs . L.concat $ [&#34;&#60;h1&#62;Hello, &#34;, L.pack name, &#34;!&#60;/h1&#62;&#34;]\n@\n\n* Nestable route handling(ApiaryT Monad; capture, stdMethod and more.).\n\n* type safe path capture.\n\nfull example & tutorial: <https://github.com/philopon/apiary/blob/master/examples/main.lhs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ] ++ (pkgs.lib).optional (flags.monadlogger) (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"));
        buildable = true;
        };
      };
    }