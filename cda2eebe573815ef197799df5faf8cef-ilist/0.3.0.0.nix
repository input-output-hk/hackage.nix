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
        name = "ilist";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/ilist";
      url = "";
      synopsis = "Optimised list functions for doing index-related things";
      description = "Optimised list functions for doing index-related things. They're faster than common idioms in all cases, and sometimes they fuse better as well.";
      buildType = "Simple";
    };
    components = {
      "ilist" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.ilist)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ilist)
            (hsPkgs.lens)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }