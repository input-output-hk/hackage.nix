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
          name = "sneathlane-haste";
          version = "1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "jason@sneathlane.com";
        author = "Jason Priestley";
        homepage = "http://sneathlane.com";
        url = "";
        synopsis = "A compositional web UI library, which draws to a Canvas element";
        description = "A simple library for construction UIs in the browser. Uses Haste to compile to JS and a Canvas element to draw the UI to the page. A UI can be written using ordinary Monadic combinators.";
        buildType = "Simple";
      };
      components = {
        "sneathlane-haste" = {
          depends  = if _flags.haste-inst
            then [
              hsPkgs.base
              hsPkgs.haste-lib
            ]
            else [
              hsPkgs.base
              hsPkgs.haste-compiler
            ];
        };
      };
    }