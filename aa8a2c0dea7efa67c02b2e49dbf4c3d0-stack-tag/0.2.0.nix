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
        name = "stack-tag";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2018 Reichert Brothers";
      maintainer = "christopher@reichertbrothers.com";
      author = "Christopher & Cody Reichert (Reichert Brothers)";
      homepage = "https://github.com/creichert/stack-tag#readme";
      url = "";
      synopsis = "Create etags for Haskell projects based on Stack snapshots";
      description = "";
      buildType = "Simple";
    };
    components = {
      "stack-tag" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.hasktags)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      exes = {
        "stack-tag" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hasktags)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.stack-tag)
            (hsPkgs.text)
          ];
        };
      };
    };
  }