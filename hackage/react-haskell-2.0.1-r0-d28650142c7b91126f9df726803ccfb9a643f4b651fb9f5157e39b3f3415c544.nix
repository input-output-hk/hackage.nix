{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { ghcjs = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "react-haskell";
        version = "2.0.1";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.deepseq)
          (hsPkgs.lens-family)
          (hsPkgs.void)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optionals (flags.ghcjs) [
          (hsPkgs.ghcjs-base)
          (hsPkgs.ghcjs-prim)
          (hsPkgs.ghcjs-dom)
        ];
      };
    };
  }