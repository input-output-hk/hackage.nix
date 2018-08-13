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
      specVersion = "0";
      identifier = {
        name = "compact-map";
        version = "2008.11.9";
      };
      license = "BSD-3-Clause";
      copyright = "2008 David Himmelstrup <lemmih@gmail.com>";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "David Himmelstrup <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Compact Data.Map implementation using Data.Binary";
      description = "This library attempts to provide a memory efficient alternative to\nData.Map.\n\nTest coverage can be found here: <http://darcs.haskell.org/~lemmih/compact-map/tests/hpc_index.html>\n\nBenchmarks can be found here: <http://darcs.haskell.org/~lemmih/compact-map/benchmarks/>";
      buildType = "Simple";
    };
    components = {
      "compact-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }