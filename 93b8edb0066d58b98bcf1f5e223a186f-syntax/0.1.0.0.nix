{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "syntax";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Paweł Nowak 2014";
        maintainer = "Paweł Nowak <pawel834@gmail.com>";
        author = "Paweł Nowak";
        homepage = "";
        url = "";
        synopsis = "Abstract syntax descriptions for parsing and pretty-printing.";
        description = "Write single syntax description, get both parser and pretty-printer.\n\nSyntax descriptions are based on semi-isomorphisms from @semi-iso@ library.\n\nThe library is very young. There are lots of useful combinators that could be written.\n\nSee @syntax-example@ for an example.";
        buildType = "Simple";
      };
      components = {
        "syntax" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mono-traversable
            hsPkgs.lens
            hsPkgs.semi-iso
          ];
        };
      };
    }