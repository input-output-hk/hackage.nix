{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      bench = true;
      properties = true;
      llvm = false;
    };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "vector-algorithms";
        version = "0.8.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.tagged);
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
      benchmarks = {
        "simple-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
      };
    };
  }