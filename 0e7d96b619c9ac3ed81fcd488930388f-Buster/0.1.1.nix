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
        name = "Buster";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2012 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/Buster";
      url = "";
      synopsis = "Hits a set of urls periodically to bust caches";
      description = "Buster is a simple tool to periodically make requests to a list of URLs. The\nmain use case for this is to bust caches.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "buster" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.yaml)
            (hsPkgs.errors)
            (hsPkgs.unix)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.unbounded-delays)
            (hsPkgs.data-default)
            (hsPkgs.hslogger)
            (hsPkgs.transformers)
            (hsPkgs.hinotify)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.string-qq)
            (hsPkgs.http-types)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            (hsPkgs.hslogger)
            (hsPkgs.unix)
            (hsPkgs.errors)
            (hsPkgs.http-conduit)
          ];
        };
      };
    };
  }