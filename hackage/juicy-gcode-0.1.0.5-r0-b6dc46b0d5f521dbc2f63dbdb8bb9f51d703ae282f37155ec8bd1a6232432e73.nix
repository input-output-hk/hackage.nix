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
        name = "juicy-gcode";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dlacko@gmail.com";
      author = "dlacko";
      homepage = "https://github.com/domoszlai/juicy-gcode";
      url = "";
      synopsis = "SVG to G-Code converter";
      description = "SVG to G-code converter that aims to support most SVG features. The flavor of the generated G-Code can be influenced providing a configuration file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "juicy-gcode" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.optparse-applicative)
            (hsPkgs.configurator)
            (hsPkgs.text)
            (hsPkgs.matrix)
            (hsPkgs.svg-tree)
          ];
        };
      };
    };
  }