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
      specVersion = "1.10";
      identifier = {
        name = "natural-transformation";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "https://github.com/ku-fpg/natural-transformation";
      url = "";
      synopsis = "A natural transformation package.";
      description = "A natural transformation transforms a container @f a@ into another\ncontainer @g a@. Natural transformations act as functor morphisms\nin category theory.\n\nThe naming of '~>', ':~>' and '\$\$' were taken,\nwith permission, from Edward Kmett's @indexed@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "natural-transformation-properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.natural-transformation)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }