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
      identifier = { name = "remote-json"; version = "0.2"; };
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
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
          (hsPkgs."remote-monad" or (buildDepError "remote-monad"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "test-spec" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
            (hsPkgs."remote-json" or (buildDepError "remote-json"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "test-example" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."remote-json" or (buildDepError "remote-json"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "front-example" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
            (hsPkgs."remote-json" or (buildDepError "remote-json"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "remote-json-properties" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
            (hsPkgs."remote-json" or (buildDepError "remote-json"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }