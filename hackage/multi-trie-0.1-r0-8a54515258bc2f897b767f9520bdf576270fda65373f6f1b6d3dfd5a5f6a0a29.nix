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
      specVersion = "1.8";
      identifier = {
        name = "multi-trie";
        version = "0.1";
      };
      license = "MIT";
      copyright = "Vadim Vinnik, 2016";
      maintainer = "Vadim Vinnik <vadim.vinnik@gmail.com>";
      author = "Vadim Vinnik <vadim.vinnik@gmail.com>";
      homepage = "https://github.com/vadimvinnik/multi-trie";
      url = "";
      synopsis = "Trie of sets, as a model for compound names having multiple values";
      description = "A multi-trie is a trie (i.e. a tree whose child nodes have distinct labels)\nwith each node containing a list of values.\nThis data structure represents a structured many-valued naming: names are\ncompound and form a monoid under concatenation; each name can have multiple\nvalues.\nSome operations could be defined for multi-tries in a rather natural way,\nincluding 'map', 'union', 'intersection', 'cartesian' product.\nMoreover, a multi-trie can contain not only ordinary values but also\nfunctions that makes it possible to apply a multi-trie of functions to a\nmulti-trie of argument values. This makes 'MultiTrie' an instance of\n'Functor', 'Applicative' and 'Monad'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.composition)
        ];
      };
      tests = {
        "Spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.multi-trie)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }