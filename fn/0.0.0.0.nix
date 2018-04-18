{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fn";
          version = "0.0.0.0";
        };
        license = "ISC";
        copyright = "2015 Daniel Patterson";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson <dbp@dbpmail.net>";
        homepage = "http://github.com/dbp/fn#readme";
        url = "";
        synopsis = "A functional web framework.";
        description = "A Haskell web framework where web handlers are functions with parameters\nthat are typed arguments.\n\n>  &#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n>  .\n>  import Data.Monoid ((<>))\n>  import Network.Wai (Request, defaultRequest)\n>  import Network.Wai.Handler.Warp (run)\n>  import Web.Fn\n>  .\n>  data Ctxt = Ctxt { req :: Request }\n>  instance RequestContext Ctxt where\n>    getRequest = req\n>    setRequest c r = c { req = r }\n>  .\n>  main :: IO ()\n>  main = do\n>  &#32;&#32;run 3000 \$ toWAI (Ctxt defaultRequest) \$ route\n>  &#32;&#32;&#32;&#32;[ end                        ==> indexH\n>  &#32;&#32;&#32;&#32;, path \"echo\" // param \"msg\" ==> echoH\n>  &#32;&#32;&#32;&#32;, path \"echo\" // segment     ==> echoH\n>  &#32;&#32;&#32;&#32;]\n>  .\n>  indexH :: Ctxt -> IO (Maybe Response)\n>  indexH _ = okText \"Try visiting /echo?msg='hello' or /echo/hello\"\n>  .\n>  echoH :: Ctxt -> Text -> IO (Maybe Response)\n>  echoH _ msg = okText \$ \"Echoing \\\"\" <> msg <> \"\\\".\"\n\nFn is a simple way to write web applications in Haskell where the code\nhandling web requests looks just like any Haskell code.\n\n* An application has some \"context\", which must contain a @Request@,\nbut can contain other data as well, like database connection pools, etc.\n\n* Routes are declared, which allow you to capture parameters and parts\nof the url and match them against handler functions of the appropriate\ntype.\n\n* All handlers take the context and the specified number and type of\nparameters.\n\n* Is a thin wrapper around the WAI interface, so anything you can do\nwith WAI, you can do with Fn.\n\nThe name comes from the fact that Fn emphasizes functions, and has no Fn\nmonad (necessary context, as well as parameters, are passed as arguments,\nand the return value, which is plain-old IO, specifies whether routing\nshould continue on).";
        buildType = "Simple";
      };
      components = {
        fn = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.bytestring
          ];
        };
        tests = {
          fn-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.fn
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }