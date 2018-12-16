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
        name = "trasa";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/haskell-trasa/trasa#readme";
      url = "";
      synopsis = "Type Safe Web Routing";
      description = "This library is a solution for http-based routing and dispatch. It's\ngoals are similar to the goals of `servant`. However, `trasa` relies\non very different mechanisms to accomplish this. There are no typeclasses\nin this library, and there is a single closed type family that is provided\nas a convenience. All of the real work is accomplish with GADTs,\nuniversal quantification, and plain old haskell data types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.vinyl)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.http-media)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.trasa)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }