{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "atomo";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "i.am@toogeneric.com";
        author = "Alex Suraci";
        homepage = "http://atomo-lang.org/";
        url = "";
        synopsis = "A highly dynamic, extremely simple, very fun programming\nlanguage.";
        description = "A super simple, object-oriented language centered around prototyping and\nmultiple dispatch. Supports usage of Haskell code/libraries via a thin\nlayer, using hint and Data.Dynamic. Experimental, but quickly evolving and\nvery fun.\n\nInfluences: Scheme, Slate, Io, Erlang, Haskell, Ruby.\n\nNeat stuff: first-class continuations, very metaprogramming and DSL\n-friendly, message-passing concurrency, pattern-matching.\n\nDocumentation: <http://atomo-lang.org/docs/>\n\nExamples: <http://bitbucket.org/alex/atomo/src/tip/examples/>\n\nIRC Channel: <irc://irc.freenode.net/atomo>";
        buildType = "Custom";
      };
      components = {
        atomo = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hint
            hsPkgs.monads-fd
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
        };
        exes = {
          atomo = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.hint
              hsPkgs.monads-fd
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ];
          };
        };
      };
    }