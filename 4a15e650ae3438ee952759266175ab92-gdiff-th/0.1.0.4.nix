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
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/gdiff-th";
      url = "";
      synopsis = "Generate gdiff GADTs and Instances.";
      description = "Generate gdiff GADTs and Instances. Alpha, but suprisingly functional.\nVery useful for unit testing large data structures. I have tested it on a\nfew very large collections of types and it appears to work. Although,\nwhen I tried to compare two versions of a hackage package with src-exts\nthe (GDiff) performance is terrible. In my personal experience of using\ngdiff in unit testing, the performance has be great. Your mileage may vary.\n\nI wouldn't use it for sending patches over the wire or anything like that,\nI am not convinced there are no bugs in my code yet. There are examples in the @examples@ directory of the\ncabal tarball. Also the main module includes an example in the documentation.\n\n* New in 0.1.0.0 : It's functional.\n\n* New in 0.1.0.4 : Builds on GHC 7.6.1, 7.4.2, and 7.0.3";
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