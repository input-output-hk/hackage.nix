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
      specVersion = "1.8";
      identifier = {
        name = "gdiff-th";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/gdiff-th";
      url = "";
      synopsis = "Generate gdiff GADTs and Instances.";
      description = "Generate gdiff GADTs and Instances.\n\nThere are examples in the @examples@ directory of the cabal tarball. Also the main module includes an example in the documentation.\n\n* 0.1.0.4 : Builds on GHC 7.6.1, 7.4.2, and 7.0.3\n\n* 0.1.0.5 : Doc fixes.";
      buildType = "Simple";
    };
    components = {
      "gdiff-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gdiff)
          (hsPkgs.th-expand-syns)
          (hsPkgs.uniplate)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ] ++ [
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.gdiff)
            (hsPkgs.th-expand-syns)
            (hsPkgs.uniplate)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }