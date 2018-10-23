{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "elision";
        version = "0.1.1.0";
      };
      license = "BSD-2-Clause";
      copyright = "2016 Alex Crough";
      maintainer = "alex@crough.io";
      author = "Alex Crough";
      homepage = "http://github.com/crough/elision#readme";
      url = "";
      synopsis = "Arrows with holes.";
      description = "A framework for describing holes in transformations\nand impure computations purely.";
      buildType = "Simple";
    };
    components = {
      "elision" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elision)
          ];
        };
      };
    };
  }