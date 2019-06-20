{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pattern-matcher"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guerric.chupin@gmail.com";
      author = "Guerric Chupin";
      homepage = "";
      url = "";
      synopsis = "A library for compiling pattern-matching to decision trees";
      description = "This library implements a transformation from\npattern-matching to decision trees, for use by\ncompiler writers. It provides support for\ngenerating useful error messages, as well as\nefficient trees through the use of heuristics.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pattern-matcher)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }