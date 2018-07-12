{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tubes";
          version = "1.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2015";
        maintainer = "gatlin@niltag.net";
        author = "Gatlin C Johnson";
        homepage = "https://github.com/gatlin/tubes";
        url = "";
        synopsis = "Effectful, iteratee-inspired stream processing based on a\nfree monad.";
        description = "This package provides the @Tube@ monad transformer, allowing any monad\ncomputation to become a stream processing pipeline. A computation of type\n@Tube a b m r@ consumes values of type 'a' and produces values of type\n'b'.\n\n@Tube@s are coroutines which can suspend computation to yield an\nintermediate value or continue execution by requesting an upstream value.\n\nAlso provided are @Pump@s, the comonadic dual to @Tube@s. Examples are\nprovided of how they can be used with @Tube@s but we have almost certainly\nonly scratched the surface.\n\nExamples and more information may be found at\n<https://github.com/gatlin/tubes>.\n\nI seem to have trouble uploading packages where the documentation can be\nbuilt correctly on Hackage. If I have (once again) messed this up, you can\nfind Haddock documentation at <https://niltag.net/tubes>. I apologize for\nany inconvenience!\n\nThis should compile on GHC 7.8, but the problem\nis that previous attempts at setting the versions properly rendered Hackage\nunable to generate documentation. Hopefully I have this fixed but any\nadvice is welcome.";
        buildType = "Simple";
      };
      components = {
        "tubes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.free
            hsPkgs.mtl
            hsPkgs.comonad
          ];
        };
      };
    }