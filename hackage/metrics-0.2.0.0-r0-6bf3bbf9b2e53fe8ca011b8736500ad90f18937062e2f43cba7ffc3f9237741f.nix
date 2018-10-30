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
        name = "metrics";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "High-performance application metric tracking";
      description = "A port of Coda Hale's excellent metrics library for the JVM\n\n<https://github.com/codahale/metrics>\n\nFor motivation about why you might want to track application metrics, check Coda\\'s talk:\n\n<http://www.youtube.com/watch?v=czes-oa0yik>\n\nInteresting portions of this package's documentation were also appropriated from the metrics library's documentation:\n\n<http://metrics.codahale.com>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.mwc-random)
          (hsPkgs.unix)
          (hsPkgs.vector-algorithms)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.lens)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.metrics)
            (hsPkgs.async)
            (hsPkgs.mwc-random)
            (hsPkgs.unix)
            (hsPkgs.QuickCheck)
            (hsPkgs.primitive)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }