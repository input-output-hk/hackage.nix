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
        name = "spatial-rotations";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsagemue \$ uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/rotations";
      url = "";
      synopsis = "Rotate about any suitable axis";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.manifolds-core)
          (hsPkgs.vector-space)
          (hsPkgs.linear)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.manifolds)
            (hsPkgs.pragmatic-show)
            (hsPkgs.containers)
            (hsPkgs.vector-space)
            (hsPkgs.spatial-rotations)
          ];
        };
      };
    };
  }