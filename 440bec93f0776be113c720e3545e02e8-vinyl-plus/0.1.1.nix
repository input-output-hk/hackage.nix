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
      specVersion = "1.10";
      identifier = {
        name = "vinyl-plus";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "http://github.com/andrew/vinyl-plus";
      url = "";
      synopsis = "Vinyl records utilities";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "vinyl-plus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vinyl)
          (hsPkgs.transformers)
          (hsPkgs.contravariant)
          (hsPkgs.unordered-containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.profunctors)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vinyl)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }