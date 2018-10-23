{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "glintcollider";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colin.james.hill@gmail.com";
      author = "Colin Hill";
      homepage = "";
      url = "";
      synopsis = "A simple ray tracer in an early stage of development.";
      description = "A simple ray tracer in an early stage of development.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "glintcollider" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ppm)
            (hsPkgs.split)
          ];
        };
      };
    };
  }