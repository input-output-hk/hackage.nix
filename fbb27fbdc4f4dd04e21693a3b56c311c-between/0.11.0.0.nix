{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "between";
          version = "0.11.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2016, Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/between";
        url = "";
        synopsis = "Function combinator \"between\" and derived combinators";
        description = "It turns out that this combinator\n\n> f ~@~ g = (f .) . (. g)\n\nis a powerful thing. It was abstracted from following (commonly used)\npattern @f . h . g@ where @f@ and @g@ are fixed.\n\nThis library not only defines @~\\@~@ combinator, but also some derived\ncombinators that can help us easily define a lot of things including\nlenses. See <http://hackage.haskell.org/package/lens lens package> for\ndetais on what lenses are.\n\nFunction @Data.Function.on@ can be implemented using @~\\@~@ as:\n\n> on :: (b -> b -> c) -> (a -> b) -> a -> a -> c\n> on f g = (id ~@~ g ~@~ g) f\n\nIf function @on3@ existed in /base/ then it could be defined as:\n\n> on3 :: (b -> b -> b -> d) -> (a -> b) -> a -> a -> a -> d\n> on3 f g = (id ~@~ g ~@~ g ~@~ g) f\n\nOther usage examples and documentation can be found in\n\"Data.Function.Between\" module.";
        buildType = "Simple";
      };
      components = {
        "between" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }