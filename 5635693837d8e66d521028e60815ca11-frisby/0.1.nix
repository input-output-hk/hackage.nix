{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.1.6";
        identifier = {
          name = "frisby";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "John Meacham (2006)";
        maintainer = "John Meacham <john@repetae.net>";
        author = "John Meacham <john@repetae.net>";
        homepage = "http://repetae.net/computer/frisby/";
        url = "http://repetae.net/repos/frisby";
        synopsis = "Linear time composable parser for PEG grammars.";
        description = "frisby is a parser library that can parse arbitrary PEG\ngrammars in linear time. Unlike other parsers of PEG grammars,\nfrisby need not be supplied with all possible rules up front,\nallowing composition of smaller parsers.\n\nPEG parsers are never ambiguous and allow infinite lookahead\nwith no backtracking penalty. Since PEG parsers can look ahead\narbitrarily, they can easily express rules such as the maximal\nmunch rule used in lexers, meaning no separate lexer is needed.\n\nIn addition to many standard combinators, frisby provides\nroutines to translate standard regex syntax into frisby parsers.";
        buildType = "Simple";
      };
      components = {
        frisby = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.array
          ];
        };
      };
    }