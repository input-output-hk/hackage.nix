{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      bench = false;
      properties = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "vector-algorithms";
        version = "0.6.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008,2009,2010,2011,2012,2013,2014 Dan Doel";
      maintainer = "Dan Doel <dan.doel@gmail.com>";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/";
      url = "";
      synopsis = "Efficient algorithms for vector arrays";
      description = "Efficient algorithms for vector arrays";
      buildType = "Simple";
    };
    components = {
      "vector-algorithms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "vector-algorithms-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "properties" = {
          depends  = pkgs.lib.optionals (!(!_flags.properties)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
      };
    };
  }