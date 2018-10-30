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
      specVersion = "1.6";
      identifier = {
        name = "shimmer";
        version = "0.1.3.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier <benl@ouroborus.net>";
      homepage = "https://github.com/discus-lang/shimmer";
      url = "";
      synopsis = "The Reflective Lambda Machine";
      description = "The Reflective Lambda Machine";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
        ];
      };
      exes = {
        "shimmer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
          ];
        };
      };
    };
  }