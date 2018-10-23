{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "acme-cofunctor";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "https://github.com/jaspervdj/acme-cofunctor";
      url = "";
      synopsis = "A Cofunctor is a structure from category theory dual to Functor";
      description = "A 'Cofunctor' is a structure from category theory dual to 'Functor'.\n\nA 'Functor' is defined by the operation 'fmap':\n\n> fmap :: (a -> b) -> (f a -> f b)\n\nThis means that its dual must be defined by the following operation:\n\n> cofmap :: (b -> a) -> (f b -> f a)\n\nSince beginning his investigations, the author of this package has discovered\nthat this pattern is /at least/ as commonly used as 'Functor'. In fact, many\nubiquitous Haskell types (e.g. @[]@, 'Maybe', @((->) a)@ turn out to have a\n'Cofunctor' instance.";
      buildType = "Simple";
    };
    components = {
      "acme-cofunctor" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }