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
        name = "hindley-milner";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael.gale@cl.cam.ac.uk";
      author = "Michael B. Gale";
      homepage = "";
      url = "";
      synopsis = "Template for Hindley-Milner based languages";
      description = "This package contains an implemention of Hindley-Milner and Algorithm W as\na starting point for derived languages.";
      buildType = "Simple";
    };
    components = {
      "hindley-milner" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hindley-milner)
            (hsPkgs.hspec)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }