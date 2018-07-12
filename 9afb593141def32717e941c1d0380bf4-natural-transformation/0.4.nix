{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "natural-transformation";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015-2016 The University of Kansas";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "https://github.com/ku-fpg/natural-transformation";
        url = "";
        synopsis = "A natural transformation package.";
        description = "A natural transformation transforms a container @f a@ into another\ncontainer @g a@. Natural transformations act as functor morphisms\nin category theory.\n\nThe naming of '~>', ':~>' and '\$\$' were taken,\nwith permission, from Edward Kmett's @indexed@ package.";
        buildType = "Simple";
      };
      components = {
        "natural-transformation" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "natural-transformation-properties" = {
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