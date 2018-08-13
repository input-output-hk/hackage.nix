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
        name = "pringletons";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/pringletons";
      url = "";
      synopsis = "Classes and data structures complementing the singletons library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "pringletons" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.singletons)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }