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
    flags = { ghcjs = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "react-haskell"; version = "2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "https://github.com/joelburget/react-haskell";
      url = "";
      synopsis = "Haskell React bindings";
      description = "This package provides high level bindings to Facebook's <http://facebook.github.io/react/ React> library, meant for use with GHCJS.\n\nReact is a JavaScript library for building user interfaces. React (and React-Haskell) is focused on just UI - it's not a framework.\n\nCurrently React-Haskell can render simple stateful components, but not what React calls classes. Put another way, React-Haskell doesn't support lifecycle methods yet.\n\nHere's a simple example which demonstrates basic elements, attributes, state, and handling events.\n\n> -- We're creating a class with JSString state\n> data Example\n> instance ReactKey Example where\n>     type ClassState Example = JSString\n>     type AnimationState Example = ()\n>     type Signal Example = JSString\n>\n> -- updating to the new state without animation\n> transition :: JSString -> JSString -> (JSString, [AnimConfig Example])\n> transition oldState signal = (signal, [])\n>\n> view :: JSString -> React Example ()\n> view str = div_ [ class_ \"container\" ] $ do\n>     input_ [ value_ str, onChange (Just . value . target) ]\n>\n> main :: IO ()\n> main = withElem \"id\" $ \\elem ->\n>     render elem =<< createClass view transition \"\" () []";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ pkgs.lib.optionals (flags.ghcjs) [
          (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
        ];
        buildable = true;
      };
    };
  }