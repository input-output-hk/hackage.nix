{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "both";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/both";
      url = "";
      synopsis = "Like Maybe, but with a different Monoid instance.";
      description = "The Monoid instance for Maybe behaves like so:\n\n> instance Monoid a => Monoid (Maybe a) where\n>   mappend (Just x) (Just y) = Just \$ x <> y\n>   mappend (Just x) Nothing  = Just x\n>   mappend Nothing  (Just y) = Just y\n>   mappend Nothing  Nothing  = Nothing\n>\n>   mempty = Nothing\n\nBoth is a newtype wrapper around Maybe providing this instance:\n\n> instance Monoid a => Monoid (Both a) where\n>   mappend (Just x) (Just y) = Just \$ x <> y\n>   mappend _ _ = Nothing\n>\n>   mempty = Just mempty";
      buildType = "Simple";
    };
    components = {
      "both" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.zero)
        ];
      };
    };
  }