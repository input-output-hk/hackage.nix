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
        name = "find-clumpiness";
        version = "0.2.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "Copyright 2015 Gregory W. Schwartz";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/find-clumpiness#readme";
      url = "";
      synopsis = "Find the clumpiness of labels in a tree";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clumpiness)
          (hsPkgs.tree-fun)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.aeson)
        ];
      };
      exes = {
        "find-clumpiness" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.find-clumpiness)
            (hsPkgs.clumpiness)
            (hsPkgs.tree-fun)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }