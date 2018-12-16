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
        name = "matchable";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "A type class for Matchable Functors.";
      description = "This package provides a type class @Matchable@, which represents\n@zipMatch@ operation which can zip two values if these two have\nexactly same shape.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tagged)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "my-functors-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tagged)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
          ];
        };
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.matchable)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }