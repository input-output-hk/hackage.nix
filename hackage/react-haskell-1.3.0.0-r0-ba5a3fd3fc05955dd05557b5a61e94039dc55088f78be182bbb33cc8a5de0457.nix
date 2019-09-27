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
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "react-haskell"; version = "1.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "https://github.com/joelburget/react-haskell";
      url = "";
      synopsis = "Haskell React bindings";
      description = "This package provides high level bindings to Facebook's <http://facebook.github.io/react/ React> library, meant for use with <http://haste-lang.org Haste>.\n\nReact is a JavaScript library for building user interfaces. React (and React-Haskell) is focused on just UI - it's not a framework.\n\nCurrently React-Haskell can render simple stateful components, but not what React calls classes. Put another way, React-Haskell doesn't support lifecycle methods yet.\n\nHere's a simple example which demonstrates basic elements, attributes, state, and handling events.\n\n> -- We're creating a class with JSString state\n> data Example\n> instance ReactKey Example where\n>     type ClassState Example = JSString\n>     type AnimationState Example = ()\n>     type Signal Example = JSString\n>\n> -- updating to the new state without animation\n> transition :: JSString -> JSString -> (JSString, [AnimConfig Example])\n> transition oldState signal = (signal, [])\n>\n> view :: JSString -> React Example ()\n> view str = div_ [ class_ \"container\" ] \$ do\n>     input_ [ value_ str, onChange (Just . targetValue) ]\n>\n> main :: IO ()\n> main = withElem \"id\" \$ \\elem ->\n>     render elem =<< createClass view transition \"\" () []";
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
          ] ++ (if flags.haste-inst
          then [ (hsPkgs."haste-lib" or (buildDepError "haste-lib")) ]
          else [
            (hsPkgs."haste-compiler" or (buildDepError "haste-compiler"))
            ]);
        buildable = true;
        };
      };
    }