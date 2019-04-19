{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { transformers = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ffunctor"; version = "1.1.100"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sam Halliday";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "FFunctor typeclass";
      description = "Micro library with a Higher Kinded Functor in the spirit of HFunctor,\nMFunctor and MonadTrans (which all have different kindedness).\n\nUseful to map over the type parameter in a record of\nfunctions, e.g. https://www.benjamin.pizza/posts/2017-12-15-functor-functors.html\nand https://discourse.haskell.org/t/local-capabilities-with-mtl/231\nand https://discourse.haskell.org/t/some-limits-of-mtl-with-records-of-functions/576";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (flags.transformers) (hsPkgs.transformers);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ffunctor)
            (hsPkgs.aeson)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.generic-lens)
            (hsPkgs.http-client)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.universum)
            ];
          build-tools = [ ((hsPkgs.buildPackages).tasty-discover) ];
          };
        };
      };
    }