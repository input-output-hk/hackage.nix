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
        name = "reroute";
        version = "0.2.2.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann <mail@agrafix.net>, Tim Baumann <tim@timbaumann.info>";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>, Tim Baumann <tim@timbaumann.info>";
      homepage = "http://github.com/agrafix/reroute";
      url = "";
      synopsis = "abstract implementation of typed and untyped web routing";
      description = "abstraction over how urls with/without parameters are mapped to their corresponding handlers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.graph-core)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.path-pieces)
          (hsPkgs.regex-compat)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "reroute-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.reroute)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "reroute-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.regex-compat)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.path-pieces)
            (hsPkgs.graph-core)
          ];
        };
      };
    };
  }