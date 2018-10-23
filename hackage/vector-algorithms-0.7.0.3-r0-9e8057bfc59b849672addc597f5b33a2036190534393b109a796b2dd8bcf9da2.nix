{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      bench = false;
      properties = true;
      llvm = false;
    };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "vector-algorithms";
        version = "0.7.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008,2009,2010,2011,2012,2013,2014,2015 Dan Doel\n(c) 2015 Tim Baumann";
      maintainer = "Dan Doel <dan.doel@gmail.com>\nErik de Castro Lopo <erikd@mega-nerd.com>";
      author = "Dan Doel";
      homepage = "https://github.com/erikd/vector-algorithms/";
      url = "";
      synopsis = "Efficient algorithms for vector arrays";
      description = "Efficient algorithms for sorting vector arrays. At some stage\nother vector algorithms may be added.";
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
        "simple-bench" = {
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
          depends  = pkgs.lib.optionals (!(!flags.properties)) [
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