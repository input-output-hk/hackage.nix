{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hevolisa";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.neun@gmx.de";
      author = "Daniel Neun";
      homepage = "";
      url = "";
      synopsis = "Genetic Mona Lisa problem in Haskell";
      description = "Hevolisa is an application that tries to approximate a bitmap image with colored polygons. It draws a set of random polygons which are changed/mutated in small random steps. There is an error function which compares the bitmap created from the polygons with the original image. If the error between the images is smaller than before then the new image replaces the old. This is done over and over again.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hevolisa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.cairo)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }