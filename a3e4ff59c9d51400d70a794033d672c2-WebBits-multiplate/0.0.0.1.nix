{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "WebBits-multiplate";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "2011, Balazs Endresz";
        maintainer = "Balazs Endresz <balazs.endresz@gmail.com>";
        author = "Balazs Endresz";
        homepage = "";
        url = "";
        synopsis = "A Multiplate instance for JavaScript.";
        description = "Provides a Multiplate instance for the JavaScript AST in the WebBits package.\nThe MultiplateSimplified module is based on the multiplate-simplified package,\nwhich makes it a bit more readable, and easier to work with\nbut the extra type class it uses might affect performance.";
        buildType = "Simple";
      };
      components = {
        WebBits-multiplate = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.multiplate
            hsPkgs.multiplate-simplified
            hsPkgs.WebBits
          ];
        };
      };
    }