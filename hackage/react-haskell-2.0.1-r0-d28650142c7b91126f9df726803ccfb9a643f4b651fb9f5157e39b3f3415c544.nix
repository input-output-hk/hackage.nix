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
    flags = { ghcjs = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "react-haskell"; version = "2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "https://github.com/joelburget/react-haskell";
      url = "";
      synopsis = "Haskell React bindings";
      description = "This package provides high level bindings to Facebook's <http://facebook.github.io/react/ React> library, meant for use with GHCJS.\n\nReact is a JavaScript library for building user interfaces. React (and React-Haskell) is focused on just UI - it's not a framework.\n\nCurrently React-Haskell can render simple stateful components, but not what React calls classes. Put another way, React-Haskell doesn't support lifecycle methods yet.\n\nHere's a simple example which demonstrates basic elements, attributes, state, and handling events.\n\n> page_ :: ReactNode Void\n> page_ =\n>     let cls = smartClass\n>             -- this is a record and these should really be curly braces,\n>             -- but haddock breaks on them.\n>             [ name = \"page\"\n>\n>             -- initially the input is empty\n>             , initialState = \"\"\n>\n>             -- always transition to the input's new value\n>             , transition = \\(_, value) -> (value, Nothing)\n>\n>             , renderFn = \\_ str -> div_ [ class_ \"container\" ] \$ do\n>                 input_ [ value_ str, onChange (Just . value . target) ]\n>             ]\n>     in classLeaf cls ()\n>\n> main :: IO ()\n> main = do\n>     Just doc <- currentDocument\n>     Just elem <- documentGetElementById doc (\"elem\" :: JSString)\n>     render page_ elem";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lens-family" or (buildDepError "lens-family"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optionals (flags.ghcjs) [
          (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-prim" or (buildDepError "ghcjs-prim"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          ];
        };
      };
    }