{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nested-routes";
          version = "7.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Declarative, compositional Wai responses";
        description = "A method to writing Wai responses\n\nThis library attempts to make it easier to write nice Wai response handlers\nby giving us a Sinatra/\n<https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented\nroutes, in addition to file-extension handling and rose-tree like composition.\nNot only do we have literal route specification, like\n<https://hackage.haskell.org/package/scotty Scotty> &\n<https://hackage.haskell.org/package/spock Spock>, but we\ncan also embed\n<https://hackage.haskell.org/package/attoparsec Attoparsec>\nparsers and <https://hackage.haskell.org/package/regex-compat Regular Expressions>\n/directly/ in our routes, with our handlers\nreflecting their results.";
        buildType = "Simple";
      };
      components = {
        nested-routes = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.composition-extra
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.hashtables
            hsPkgs.mtl
            hsPkgs.poly-arity
            hsPkgs.pred-set
            hsPkgs.pred-trie
            hsPkgs.regex-compat
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.tries
            hsPkgs.unordered-containers
            hsPkgs.wai-transformers
            hsPkgs.wai-middleware-content-type
            hsPkgs.wai-middleware-verbs
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.nested-routes
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.composition-extra
              hsPkgs.errors
              hsPkgs.exceptions
              hsPkgs.hashable
              hsPkgs.hashtables
              hsPkgs.HSet
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.poly-arity
              hsPkgs.pred-set
              hsPkgs.pred-trie
              hsPkgs.regex-compat
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.tries
              hsPkgs.unordered-containers
              hsPkgs.wai-transformers
              hsPkgs.wai-middleware-content-type
              hsPkgs.wai-middleware-verbs
              hsPkgs.warp
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.nested-routes
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.composition-extra
              hsPkgs.errors
              hsPkgs.exceptions
              hsPkgs.hashable
              hsPkgs.hashtables
              hsPkgs.HSet
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.poly-arity
              hsPkgs.pred-trie
              hsPkgs.pred-set
              hsPkgs.regex-compat
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.tries
              hsPkgs.unordered-containers
              hsPkgs.wai-transformers
              hsPkgs.wai-middleware-content-type
              hsPkgs.wai-middleware-verbs
              hsPkgs.hspec
              hsPkgs.hspec-wai
            ];
          };
        };
      };
    }