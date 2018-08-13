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
      specVersion = "1.4";
      identifier = {
        name = "tidal";
        version = "0.5.3";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and other contributors, 2015";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidal.lurk.org/";
      url = "";
      synopsis = "Pattern language for improvised music";
      description = "Tidal is a domain specific language for live coding pattern.";
      buildType = "Simple";
    };
    components = {
      "tidal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.parsec)
          (hsPkgs.hosc)
          (hsPkgs.hashable)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.websockets)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.hmt)
        ];
      };
    };
  }