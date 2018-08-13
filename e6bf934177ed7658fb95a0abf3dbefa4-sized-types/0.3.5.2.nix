{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      all = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sized-types";
        version = "0.3.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill, Tristan Bull";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools";
      url = "";
      synopsis = "Sized types in Haskell.";
      description = "Providing indices, matrixes, sparse matrixes, and signed and unsigned bit vectors.";
      buildType = "Simple";
    };
    components = {
      "sized-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
      exes = {
        "sized-types-test1" = {
          depends  = if _flags.all
            then [
              (hsPkgs.base)
              (hsPkgs.QuickCheck)
            ]
            else [ (hsPkgs.base) ];
        };
        "sized-types-example1" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }