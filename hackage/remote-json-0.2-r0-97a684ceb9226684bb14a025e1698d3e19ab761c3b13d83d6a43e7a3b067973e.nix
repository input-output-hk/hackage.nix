{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "remote-json";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 The University of Kansas";
      maintainer = "JDawson@ku.edu";
      author = "Justin Dawson and Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Remote Monad implementation of the JSON RPC protocol";
      description = "JSON RPC, where you can using monads and applicative functors\nto bundle JSON RPC methods and notifications.\n\n@\n&#123;-&#35; LANGUAGE GADTs, OverloadedStrings, TypeOperators &#35;-&#125;\n\nmodule Main where\n\nimport Control.Natural ((:~>), nat)\nimport Control.Remote.Monad.JSON\nimport Control.Remote.Monad.JSON.Router(transport,router,Call(..),methodNotFound)\nimport Data.Aeson\nimport Data.Text(Text)\n\n&#45;&#45; Our small DSL\n\nsay :: Text -> RPC ()\nsay msg = notification &#34;say&#34; (List [String msg])\n\ntemperature :: RPC Int\ntemperature = method &#34;temperature&#34; None\n\n&#45;&#45; Our remote program\n\nmain :: IO ()\nmain = do\n&#32;&#32;let s = weakSession network\n&#32;&#32;t <- send s \$ do\n&#32;&#32;&#32;&#32;say &#34;Hello, &#34;\n&#32;&#32;&#32;&#32;say &#34;World!&#34;\n&#32;&#32;&#32;&#32;temperature\n&#32;&#32;print t\n\n&#45;&#45; Simulate the JSON-RPC server\n\nnetwork :: SendAPI :~> IO\nnetwork = transport \$ router sequence \$ nat remote\n&#32;&#32;where\n&#32;&#32;&#32;&#32;remote :: Call a -> IO a\n&#32;&#32;&#32;&#32;remote (CallMethod &#34;temperature&#34; _)                 = return \$ Number 42\n&#32;&#32;&#32;&#32;remote (CallNotification &#34;say&#34; (List [String msg])) = print msg\n&#32;&#32;&#32;&#32;remote _                                            = methodNotFound\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.fail)
          (hsPkgs.transformers)
          (hsPkgs.natural-transformation)
          (hsPkgs.remote-monad)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.natural-transformation)
            (hsPkgs.remote-json)
            (hsPkgs.text)
          ];
        };
        "test-example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.natural-transformation)
            (hsPkgs.random)
            (hsPkgs.remote-json)
            (hsPkgs.scientific)
            (hsPkgs.text)
          ];
        };
        "front-example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.natural-transformation)
            (hsPkgs.remote-json)
            (hsPkgs.text)
          ];
        };
        "remote-json-properties" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.natural-transformation)
            (hsPkgs.remote-json)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }