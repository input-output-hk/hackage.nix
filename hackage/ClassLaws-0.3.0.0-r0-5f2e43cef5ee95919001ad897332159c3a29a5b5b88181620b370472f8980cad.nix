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
        name = "ClassLaws";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrikj@chalmers.se";
      author = "Patrik Jansson and Johan Jeuring";
      homepage = "http://wiki.portal.chalmers.se/cse/pmwiki.php/FP/ClassLaws";
      url = "";
      synopsis = "Stating and checking laws for type class methods";
      description = "The specification of a class in Haskell often starts with\nstating, in text, the laws that should be satisfied by methods\ndefined in instances of the class, followed by the type of the\nmethods of the class. The ClassLaws library is a framework that\nsupports testing such class laws using QuickCheck.  Our framework is\na light-weight class law testing framework, which requires a limited\namount of work per class law, and per datatype for which the class\nlaw is tested.  We also show how to test class laws with\npartially-defined values.  Using partially-defined values, we show\nthat the standard lazy and strict implementations of the state monad\ndo not satisfy the expected laws. More information can be found at\nhttp://wiki.portal.chalmers.se/cse/pmwiki.php/FP/ClassLaws";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.ChasingBottoms)
        ];
      };
    };
  }