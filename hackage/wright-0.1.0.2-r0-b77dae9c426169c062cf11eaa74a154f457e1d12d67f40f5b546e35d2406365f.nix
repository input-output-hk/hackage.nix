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
        name = "wright";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@vikramverma.com";
      author = "vi";
      homepage = "";
      url = "";
      synopsis = "Colour space transformations and metrics.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "wright" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bed-and-breakfast)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "wright-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bed-and-breakfast)
            (hsPkgs.containers)
            (hsPkgs.assertions)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.wright)
          ];
        };
      };
    };
  }