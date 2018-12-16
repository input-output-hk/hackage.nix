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
        name = "hedgehog-checkers-lens";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "https://github.com/bitemyapp/hedgehog-checkers#readme";
      url = "";
      synopsis = "";
      description = "hedgehog-checkers-lens provides the various lens, prism, setter, and traversal laws as ready-to-use properties.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hedgehog)
          (hsPkgs.hedgehog-checkers)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-checkers)
            (hsPkgs.lens)
            (hsPkgs.hedgehog-checkers-lens)
          ];
        };
      };
    };
  }