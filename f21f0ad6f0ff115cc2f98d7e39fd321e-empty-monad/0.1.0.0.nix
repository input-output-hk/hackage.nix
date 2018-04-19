{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "empty-monad";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vadim Vinnik, 2017";
        maintainer = "vadim.vinnik@gmail.com";
        author = "Vadim Vinnik";
        homepage = "https://github.com/vadimvinnik/empty-monad";
        url = "";
        synopsis = "A container that always has no values.";
        description = "Like arithmetics is incomplete without zero, set theory is impossible without\na notion of an empty set, algorithm theory must take into account totally\nundefined functions -- so the domain of data types needs its absolute zero.\n'Void' type from the @void@ package <https://hackage.haskell.org/package/void>\nprovides a zero element for the kind @*@ of unparametrized types. This package\ndoes the same for the kind @*->*@ of types with one parameter.";
        buildType = "Simple";
      };
      components = {
        empty-monad = {
          depends  = [ hsPkgs.base ];
        };
      };
    }