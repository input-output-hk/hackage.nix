{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "exhaustive";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/exhaustive";
      url = "";
      synopsis = "Compile time checks that a computation considers producing data through all possible constructors";
      description = "For a brief tutorial to @exhaustive@, check out the documentation for \"Control.Exhaustive\", which contains a small example.";
      buildType = "Simple";
    };
    components = {
      "exhaustive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.transformers)
        ];
      };
    };
  }