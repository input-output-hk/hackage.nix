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
        name = "lens-prelude";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/lens-prelude";
      url = "";
      synopsis = "Alternate prelude that exports lens combinators";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "lens-prelude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.either)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.time)
        ];
      };
    };
  }