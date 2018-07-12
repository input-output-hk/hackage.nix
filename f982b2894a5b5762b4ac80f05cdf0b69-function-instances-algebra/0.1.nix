{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "function-instances-algebra";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tob.brandt@gmail.com";
        author = "Tobias Brandt";
        homepage = "github.com/kreuzschlitzschraubenzieher/function-instances-algebra";
        url = "";
        synopsis = "Instances of the Algebra.* classes for functions";
        description = "This package provides instances for functions @(k -> a)@ of the classes\nAbsolute, Algebraic, Differential, Field, Lattice, Monoid, Ring and Transcendental\nfrom the numeric-prelude package. An instance for Additive already comes with the\noriginal package.\n\nIf @a@ has an instance for one of the classes, then @(k -> a)@ has too.\nThe instances do what you would expect. Values become constant functions:\n\n@\nzero = const zero\n@\n\nUnary functions are composed:\n\n@\nsin f = sin . f\n@\n\nBinary functions fan out the input and combine both results:\n\n@\nf + g = \\\\x -> f x + g x\n@\n\nYou can either import them separately or import @Data.Function.Instances.Algebra@ to\nget them all at once.";
        buildType = "Simple";
      };
      components = {
        "function-instances-algebra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.numeric-prelude
          ];
        };
      };
    }