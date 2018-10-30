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
      specVersion = "1.18";
      identifier = {
        name = "numhask-prelude";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "A numeric prelude";
      description = "A numeric prelude, combining protolude and numhask.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.numhask)
          (hsPkgs.protolude)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.doctest)
            (hsPkgs.numhask-prelude)
          ];
        };
      };
    };
  }