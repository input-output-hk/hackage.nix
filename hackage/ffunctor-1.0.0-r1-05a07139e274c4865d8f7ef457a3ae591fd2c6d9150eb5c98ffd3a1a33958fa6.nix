{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ffunctor"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sam Halliday";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "FFunctor typeclass";
      description = "Micro library with a Higher kinded Functor in the spirit of HFunctor,\nMFunctor and MonadTrans.\n\nUseful to map over the type parameter in a record of\nfunctions, e.g. https://www.benjamin.pizza/posts/2017-12-15-functor-functors.html";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }