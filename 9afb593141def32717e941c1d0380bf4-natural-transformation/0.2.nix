{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "natural-transformation";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 The University of Kansas";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "https://github.com/ku-fpg/natural-transformation";
        url = "";
        synopsis = "A natural transformation package.";
        description = "A natural transformation transforms a container @f a@ into another\ncontainer @g a@ while preserving the internal structure. Natural\ntransformations act as functor morphisms in category theory.";
        buildType = "Simple";
      };
      components = {
        natural-transformation = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          natural-transformation-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.natural-transformation
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }