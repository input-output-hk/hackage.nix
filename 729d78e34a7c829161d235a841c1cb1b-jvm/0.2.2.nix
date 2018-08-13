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
        name = "jvm";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm#readme";
      url = "";
      synopsis = "Call JVM methods from Haskell.";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "jvm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.choice)
          (hsPkgs.distributed-closure)
          (hsPkgs.jni)
          (hsPkgs.singletons)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.jvm)
            (hsPkgs.text)
          ];
          libs = [ (pkgs."pthread") ];
        };
      };
      benchmarks = {
        "micro-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.jni)
            (hsPkgs.jvm)
          ];
        };
      };
    };
  }