{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      example = false;
      example-stm = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nested-routes";
        version = "6.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "A method to writing Wai responses\n\nThis library attempts to make it easier to write nice Wai response handlers\nby giving us a Sinatra/\n<https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented\nroutes, in addition to file-extension handling and rose-tree like composition.\nNot only do we have literal route specification, like\n<https://hackage.haskell.org/package/scotty Scotty> &\n<https://hackage.haskell.org/package/spock Spock>, but we\ncan also embed\n<https://hackage.haskell.org/package/attoparsec Attoparsec>\nparsers and <https://hackage.haskell.org/package/regex-compat Regular Expressions>\n/directly/ in our routes, with our handlers\nreflecting their results. You can find more information in the\n<https://www.fpcomplete.com/user/AthanClark/nested-routes demo>.\nand the examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.composition-extra)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.poly-arity)
          (hsPkgs.pred-trie)
          (hsPkgs.regex-compat)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.tries)
          (hsPkgs.wai-transformers)
          (hsPkgs.wai-middleware-content-type)
          (hsPkgs.wai-middleware-verbs)
        ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nested-routes)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.composition-extra)
            (hsPkgs.containers)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-trie)
            (hsPkgs.regex-compat)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.tries)
            (hsPkgs.wai-transformers)
            (hsPkgs.wai-middleware-content-type)
            (hsPkgs.wai-middleware-verbs)
            (hsPkgs.warp)
          ];
        };
        "example-stm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.nested-routes)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.composition-extra)
            (hsPkgs.containers)
            (hsPkgs.cookie)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.errors)
            (hsPkgs.http-types)
            (hsPkgs.iso8601-time)
            (hsPkgs.lucid)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-trie)
            (hsPkgs.regex-compat)
            (hsPkgs.semigroups)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.tries)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-content-type)
            (hsPkgs.wai-middleware-verbs)
            (hsPkgs.wai-transformers)
            (hsPkgs.wai-session)
            (hsPkgs.warp)
            (hsPkgs.utf8-string)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nested-routes)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.composition-extra)
            (hsPkgs.containers)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-trie)
            (hsPkgs.regex-compat)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.tries)
            (hsPkgs.wai-transformers)
            (hsPkgs.wai-middleware-content-type)
            (hsPkgs.wai-middleware-verbs)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
          ];
        };
      };
    };
  }