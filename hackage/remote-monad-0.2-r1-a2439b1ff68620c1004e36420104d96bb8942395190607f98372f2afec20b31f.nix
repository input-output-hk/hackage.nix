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
      identifier = { name = "remote-monad"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Andy Gill, Justin Dawson";
      homepage = "";
      url = "";
      synopsis = "An parametrizable Remote Monad, and parametrizable Applicative Functor";
      description = "An implementation of the concepts behind Remote Monads. There is support for various bundling strategies.\n\n@\n&#123;-&#35; LANGUAGE GADTs &#35;-&#125;\n&#123;-&#35; LANGUAGE KindSignatures &#35;-&#125;\n\nmodule Main where\n\nimport Control.Natural (nat, (#))\nimport Control.Remote.Monad\nimport Control.Remote.Monad.Packet.Weak\n\ndata Command :: * where\n&#32;&#32;Say :: String -> Command\n\ndata Procedure :: * -> * where\n&#32;&#32;Temperature :: Procedure Int\n\nsay :: String -> RemoteMonad Command Procedure ()\nsay s = command (Say s)\n\ntemperature :: RemoteMonad Command Procedure Int\ntemperature = procedure Temperature\n\nrunWP :: WeakPacket Command Procedure a -> IO a\nrunWP (Command (Say s))       = print s\nrunWP (Procedure Temperature) = return 42\n\nsend :: RemoteMonad Command Procedure a -> IO a\nsend = run \$ runMonad \$ nat runWP\n\nmain = send \$ do\n&#32;&#32;say &#34;Howdy doodly do&#34;\n&#32;&#32;say &#34;How about a muffin?&#34;\n&#32;&#32;t <- temperature\n&#32;&#32;say (show t ++ &#34;F&#34;)\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "remote-monad-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
            (hsPkgs."remote-monad" or (errorHandler.buildDepError "remote-monad"))
            ];
          buildable = true;
          };
        "remote-monad-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
            (hsPkgs."remote-monad" or (errorHandler.buildDepError "remote-monad"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }