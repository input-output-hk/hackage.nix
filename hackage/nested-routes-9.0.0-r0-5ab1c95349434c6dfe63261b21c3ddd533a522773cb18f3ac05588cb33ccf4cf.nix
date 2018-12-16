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
        version = "9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "";
      homepage = "https://github.com/athanclark/nested-routes#readme";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/pred-trie#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.extractable-singleton)
          (hsPkgs.hashable)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.mtl)
          (hsPkgs.poly-arity)
          (hsPkgs.pred-trie)
          (hsPkgs.regex-compat)
          (hsPkgs.text)
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
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.errors)
            (hsPkgs.exceptions)
            (hsPkgs.extractable-singleton)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.monad-control-aligned)
            (hsPkgs.mtl)
            (hsPkgs.nested-routes)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-trie)
            (hsPkgs.regex-compat)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
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