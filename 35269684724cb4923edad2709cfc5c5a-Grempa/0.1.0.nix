{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Grempa";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Olle Fredriksson";
        maintainer = "fredriksson.olle@gmail.com";
        author = "Olle Fredriksson";
        homepage = "";
        url = "";
        synopsis = "Embedded grammar DSL and LALR parser generator";
        description = "A library for expressing programming language grammars in a form similar\nto BNF, which is extended with the semantic actions to take when\na production has been parsed. The grammars are typed and are to be be used\nwith the LALR(1) parser generator, also part of the library, which can\ngenerate a parser for the language either at compile time using Template\nHaskell, producing fast parsers with no initial runtime overhead, or\ndynamically, which has the initial overhead of generating the parser, but\ncan be used for example when the grammar depends on an input.";
        buildType = "Simple";
      };
      components = {
        Grempa = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.monads-fd
            hsPkgs.template-haskell
            hsPkgs.th-lift
          ] ++ pkgs.lib.optional _flags.test hsPkgs.QuickCheck;
        };
      };
    }