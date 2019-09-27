let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-push"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/xml-push/wiki";
      url = "";
      synopsis = "Push XML from/to client to/from server over XMPP or HTTP";
      description = "examples/TestSimple.hs\n\nextensions\n\n* ScopedTypeVariables\n\n> module TestSimple (testSimple) where\n>\n> import Control.Monad\n> import Control.Concurrent\n> import Data.Maybe\n> import Data.Pipe\n> import Data.Pipe.ByteString\n> import System.IO\n> import Text.XML.Pipe\n> import Network.XmlPush\n> import Network.XmlPush.Simple\n>\n> testSimple :: Handle -> IO ()\n> testSimple h = do\n> \t(sp :: SimplePusher Handle) <- generate (One h) ()\n> \tvoid . forkIO . runPipe_ \$ readFrom sp\n> \t\t=\$= convert (xmlString . (: []))\n> \t\t=\$= toHandle stdout\n> \trunPipe_ \$ fromHandle stdin\n> \t\t=\$= xmlEvent\n> \t\t=\$= convert fromJust\n> \t\t=\$= xmlNode []\n> \t\t=\$= writeTo sp\n\nexamples/simpleClient\n\n> import Network\n> import TestSimple\n>\n> main :: IO ()\n> main = testSimple =<< connectTo \"localhost\" (PortNumber 54492)\n\nexamples/simpleServer\n\n> import Control.Monad\n> import Control.Concurrent\n> import Network\n>\n> import TestSimple\n>\n> main :: IO ()\n> main = forever . (void . forkIO . testSimple . fst3 =<<) . accept\n> \t=<< listenOn (PortNumber 54492)\n>\n> fst3 :: (a, b, c) -> a\n> fst3 (x, _, _) = x\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."peyotls" or (buildDepError "peyotls"))
          (hsPkgs."simple-pipe" or (buildDepError "simple-pipe"))
          (hsPkgs."xml-pipe" or (buildDepError "xml-pipe"))
          (hsPkgs."handle-like" or (buildDepError "handle-like"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."xmpipe" or (buildDepError "xmpipe"))
          (hsPkgs."sasl" or (buildDepError "sasl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."x509-store" or (buildDepError "x509-store"))
          (hsPkgs."tighttp" or (buildDepError "tighttp"))
          ];
        buildable = true;
        };
      };
    }