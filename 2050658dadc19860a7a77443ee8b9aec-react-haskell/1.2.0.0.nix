{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste-inst = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "react-haskell";
          version = "1.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "joelburget@gmail.com";
        author = "Joel Burget";
        homepage = "https://github.com/joelburget/react-haskell";
        url = "";
        synopsis = "Haskell React bindings";
        description = "This package provides high level bindings to Facebook's <facebook.github.io/react/ React> library, meant for use with <haste-lang.org Haste>.\n\nReact is a JavaScript library for building user interfaces. React (and React-Haskell) is focused on just UI - it's not a framework.\n\nCurrently React-Haskell can render simple stateful components, but not what React calls classes. Put another way, React-Haskell doesn't support lifecycle methods yet.\n\nHere's a simple example which demonstrates basic elements, attributes, state, and handling events.\n\n> statefulView :: StatefulReact JSString ()\n> statefulView = div_ <! class_ \"container\" \$ do\n>     str <- getState\n>     input_ <! value_ str\n>            <! onChange (\\_ evt -> toJSStr \$ map toUpper \$ fromJSStr \$ targetValue evt)";
        buildType = "Simple";
      };
      components = {
        react-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.monads-tf
          ] ++ (if _flags.haste-inst
            then [ hsPkgs.haste-lib ]
            else [ hsPkgs.haste-compiler ]);
        };
      };
    }