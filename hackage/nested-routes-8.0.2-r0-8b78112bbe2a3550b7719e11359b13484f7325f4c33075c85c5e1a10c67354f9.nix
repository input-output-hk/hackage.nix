{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nested-routes";
        version = "8.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "";
      homepage = "https://github.com/athanclark/nested-routes#readme";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "This library attempts to make it easier to write nice Wai response handlers by giving us a Sinatra/ <https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented routes, in addition to file-extension handling and rose-tree like composition. Not only do we have literal route specification, like <https://hackage.haskell.org/package/scotty Scotty> & <https://hackage.haskell.org/package/spock Spock>, but we can also embed <https://hackage.haskell.org/package/attoparsec Attoparsec> parsers and <https://hackage.haskell.org/package/regex-compat Regular Expressions> /directly/ in our routes, with our handlers reflecting their results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.extractable-singleton)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.mtl)
          (hsPkgs.poly-arity)
          (hsPkgs.pred-set)
          (hsPkgs.pred-trie)
          (hsPkgs.regex-compat)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.tries)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai-middleware-content-type)
          (hsPkgs.wai-middleware-verbs)
          (hsPkgs.wai-transformers)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.HSet)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.composition-extra)
            (hsPkgs.errors)
            (hsPkgs.exceptions)
            (hsPkgs.extractable-singleton)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.monad-control-aligned)
            (hsPkgs.mtl)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-set)
            (hsPkgs.pred-trie)
            (hsPkgs.regex-compat)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.tries)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai-middleware-content-type)
            (hsPkgs.wai-middleware-verbs)
            (hsPkgs.wai-transformers)
          ];
        };
      };
    };
  }