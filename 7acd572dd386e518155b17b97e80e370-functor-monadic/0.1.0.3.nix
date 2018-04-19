{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "functor-monadic";
          version = "0.1.0.3";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "janos.tapolczai@gmail.com";
        author = "Janos Tapolczai";
        homepage = "https://github.com/ombocomp/FunctorMonadic/";
        url = "";
        synopsis = "Monad-style combinators for functors.";
        description = "Monad's bind (>>=, >=>) allows the infix chaining of monadic\nfunctions, but no analogues exist for functors. This package\nprovides a handful of handy operators that ease the piping\ntogether a functor- and monad-level functions.";
        buildType = "Simple";
      };
      components = {
        functor-monadic = {
          depends  = [ hsPkgs.base ];
        };
      };
    }