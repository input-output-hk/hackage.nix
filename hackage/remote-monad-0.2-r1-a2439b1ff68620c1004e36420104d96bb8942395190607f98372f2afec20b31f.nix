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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "remote-monad-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
            (hsPkgs."remote-monad" or (buildDepError "remote-monad"))
            ];
          };
        "remote-monad-properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
            (hsPkgs."remote-monad" or (buildDepError "remote-monad"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }