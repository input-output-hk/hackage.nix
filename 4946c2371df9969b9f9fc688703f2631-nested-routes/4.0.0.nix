{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
      example-stm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nested-routes";
          version = "4.0.0";
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
        nested-routes = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.wai-util
            hsPkgs.http-types
            hsPkgs.http-media
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.witherable
            hsPkgs.composition
            hsPkgs.composition-extra
            hsPkgs.semigroups
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.blaze-html
            hsPkgs.lucid
            hsPkgs.shakespeare
            hsPkgs.clay
            hsPkgs.bytestring
            hsPkgs.bifunctors
            hsPkgs.attoparsec
            hsPkgs.regex-compat
            hsPkgs.pred-trie
            hsPkgs.tries
            hsPkgs.poly-arity
            hsPkgs.sets
            hsPkgs.errors
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-util
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.http-media
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.witherable
              hsPkgs.composition
              hsPkgs.composition-extra
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.blaze-html
              hsPkgs.lucid
              hsPkgs.shakespeare
              hsPkgs.clay
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.regex-compat
              hsPkgs.pred-trie
              hsPkgs.tries
              hsPkgs.poly-arity
              hsPkgs.sets
              hsPkgs.errors
            ];
          };
          example-stm = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-session
              hsPkgs.cookie
              hsPkgs.wai-util
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.http-media
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.witherable
              hsPkgs.composition
              hsPkgs.composition-extra
              hsPkgs.semigroups
              hsPkgs.constraints
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.blaze-html
              hsPkgs.lucid
              hsPkgs.shakespeare
              hsPkgs.clay
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.regex-compat
              hsPkgs.pred-trie
              hsPkgs.tries
              hsPkgs.poly-arity
              hsPkgs.sets
              hsPkgs.errors
              hsPkgs.cryptonite
              hsPkgs.memory
              hsPkgs.time
              hsPkgs.iso8601-time
              hsPkgs.utf8-string
              hsPkgs.stm
              hsPkgs.errors
              hsPkgs.cookie
              hsPkgs.data-default
              hsPkgs.blaze-builder
              hsPkgs.base64-bytestring
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.shakespeare
              hsPkgs.lucid
              hsPkgs.attoparsec
              hsPkgs.regex-compat
              hsPkgs.containers
              hsPkgs.composition
              hsPkgs.composition-extra
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.wai-util
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.poly-arity
              hsPkgs.witherable
              hsPkgs.constraints
              hsPkgs.pred-trie
              hsPkgs.mtl
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.transformers
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.sets
              hsPkgs.errors
            ];
          };
        };
      };
    }