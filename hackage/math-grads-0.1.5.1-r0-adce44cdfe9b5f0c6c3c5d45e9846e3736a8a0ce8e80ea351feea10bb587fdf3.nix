{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "math-grads"; version = "0.1.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexandr Sadovnikov";
      maintainer = "artemkondyukov, AlexKaneRUS, vks4git";
      author = "Alexandr Sadovnikov";
      homepage = "https://github.com/biocad/math-grads#readme";
      url = "";
      synopsis = "Library containing graph data structures and graph algorithms";
      description = "Library containing graph data structures and graph algorithms.\n\nGraph data structures:\n\n* Graph type class;\n\n* GenericGraph data structure.\n\nGraph algorithms:\n\n* Ullmann's subgraph isomorphism algorithm;\n\n* drawing of planar graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.linear)
          (hsPkgs.matrix)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "Coords-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.math-grads)
            (hsPkgs.random)
            ];
          };
        "Graph-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.math-grads)
            ];
          };
        "Isomorphism-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.math-grads)
            ];
          };
        };
      };
    }