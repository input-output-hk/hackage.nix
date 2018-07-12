{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shakespeare-js";
          version = "1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/shakespearean-templates";
        url = "";
        synopsis = "Stick your haskell variables into javascript/coffeescript at compile time. (deprecated)";
        description = "Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation. Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\nIn this case, the variable type needs a ToJavascript instance.\n\nshakespeare-javascript is also known as Julius, and passes through plain javascript.\n\nThere is also a shakespeare version for CoffeeScript, TypeScript, and Roy, all languages that compile down to Javascript. They all expect you to have the appropriate compiler in your path.\n\nshakespeare originated from the hamlet template package.\nPlease see http://www.yesodweb.com/book/shakespearean-templates for a more thorough description and examples.";
        buildType = "Simple";
      };
      components = {
        "shakespeare-js" = {
          depends  = [
            hsPkgs.base
            hsPkgs.shakespeare
          ];
        };
      };
    }