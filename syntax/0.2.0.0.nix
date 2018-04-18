{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "syntax";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "Paweł Nowak 2014";
        maintainer = "Paweł Nowak <pawel834@gmail.com>";
        author = "Paweł Nowak";
        homepage = "";
        url = "";
        synopsis = "Abstract syntax descriptions for parsing and pretty-printing.";
        description = "Abstract syntax descriptions for parsing and pretty-printing.\nWrite a single syntax description, get both a parser and a pretty-printer.\n\nSyntax descriptions are based on semi-isomorphisms from @semi-iso@ library.\n\nThe library is very young. There are lots of useful combinators that could be written.\n\nSee @syntax-example@ for an example, @syntax-attoparsec@ and @syntax-pretty@ for\na parser/printer implementation.";
        buildType = "Simple";
      };
      components = {
        syntax = {
          depends  = [
            hsPkgs.base
            hsPkgs.mono-traversable
            hsPkgs.lens
            hsPkgs.semi-iso
            hsPkgs.scientific
          ];
        };
      };
    }