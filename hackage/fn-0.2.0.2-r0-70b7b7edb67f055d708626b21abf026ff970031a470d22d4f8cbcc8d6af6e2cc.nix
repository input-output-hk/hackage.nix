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
      identifier = { name = "fn"; version = "0.2.0.2"; };
      license = "ISC";
      copyright = "2015 Daniel Patterson";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson <dbp@dbpmail.net>";
      homepage = "http://github.com/dbp/fn#readme";
      url = "";
      synopsis = "A functional web framework.";
      description = "A Haskell web framework where you write plain old functions.\n\n/Provided you have/ <https://github.com/commercialhaskell/stack#readme stack> /installed, you can run this example like a shell script:/\n\n@\n#!\\/usr\\/bin\\/env stack\n\\-\\- stack --resolver lts-3.10 --install-ghc runghc --package fn\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\nimport Data.Monoid ((&#60;&#62;))\nimport Data.Text (Text)\nimport Network.Wai (Response)\nimport Network.Wai.Handler.Warp (run)\nimport Web.Fn\n\ndata Ctxt = Ctxt &#123; _req :: FnRequest &#125;\ninstance RequestContext Ctxt where\n&#32; getRequest = _req\n&#32; setRequest c r = c &#123; _req = r &#125;\n\ninitializer :: IO Ctxt\ninitializer = return (Ctxt defaultFnRequest)\n\nmain :: IO ()\nmain = do ctxt <- initializer\n&#32;         run 3000 $ toWAI ctxt site\n\nsite :: Ctxt -> IO Response\nsite ctxt = route ctxt [ end                        ==> indexH\n&#32;                      , path &#34;echo&#34; \\/? param &#34;msg&#34; ==> echoH\n&#32;                      , path &#34;echo&#34; \\/\\/ segment     ==> echoH\n&#32;                      ]\n&#32;                 \\`fallthrough\\` notFoundText &#34;Page not found.&#34;\n\nindexH :: Ctxt -> IO (Maybe Response)\nindexH _ = okText &#34;Try visiting \\/echo?msg='hello' or \\/echo\\/hello&#34;\n\nechoH :: Ctxt -> Text -> IO (Maybe Response)\nechoH _ msg = okText $ &#34;Echoing '&#34; &#60;&#62; msg &#60;&#62; &#34;'.&#34;\n@\n\n\nFn lets you write web code that just looks like normal Haskell code.\n\n* An application has some \\\"context\\\", which must contain a @Request@,\nbut can contain other data as well, like database connection pools,\netc. This context will be passed to each of your handlers, updated\nwith the current HTTP Request.\n\n* Routes are declared to capture parameters and/or segments of the url,\nand then routed to handler functions that have the appropriate number\nand type of arguments. These functions return @IO (Maybe Response)@,\nwhere @Nothing@ indicates to Fn that you want it to keep looking for\nmatching routes.\n\n* All handlers just use plain old @IO@, which means it is easy to call\nthem from GHCi, @forkIO@, etc.\n\n* All of this is a small wrapper around the WAI interface, so you have\nthe flexilibility to do anything you need to do with HTTP.\n\nThe name comes from the fact that Fn emphasizes functions (over monads),\nwhere all necessary data is passed via function arguments, and control\nflow is mediated by return values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      tests = {
        "fn-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fn" or (errorHandler.buildDepError "fn"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }