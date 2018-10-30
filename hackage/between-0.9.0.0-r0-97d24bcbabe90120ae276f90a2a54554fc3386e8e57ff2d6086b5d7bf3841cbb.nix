{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "between";
        version = "0.9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, 2014 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/between";
      url = "";
      synopsis = "Function combinator \"between\" and derived combinators";
      description = "It turns out that this combinator\n\n> f ~@~ g = (f .) . (. g)\n\nis a powerful thing. It was abstracted from following (commonly used)\npattern @f . h . g@ where @f@ and @g@ are fixed.\n\nThis library not only defines @~\\@~@ combinator, but also a some derived\ncombinators that can help us to easily define a lot of things including\nlenses. See <http://hackage.haskell.org/package/lens lens package> for\ndetais on what lenses are.\n\nREADME and ChangeLog can be found in source code package and on GitHub:\n\n* <https://github.com/trskop/between/blob/master/README.md>\n\n* <https://github.com/trskop/between/blob/master/ChangeLog.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }