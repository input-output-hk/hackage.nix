{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "svg2q"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Greve";
      author = "Jan Greve";
      homepage = "http://www.informatik.uni-kiel.de/~jgr/svg2q";
      url = "";
      synopsis = "Code generation tool for Quartz code from a SVG.";
      description = "svg2q will generate an Objective C Class from an SVG file which shows the SVG. The Class offers methods to set attributes of those SVG elements that have ids to change looks at runtime. This package is the result of a bachelors thesis and is not yet ready to use for \"normal\" SVGs. Upon request, usability may be improved if spare time is available.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "svg2q" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.svgutils)
            (hsPkgs.language-c)
            (hsPkgs.xml)
            (hsPkgs.haskell98)
            (hsPkgs.syb)
            (hsPkgs.pretty)
            ];
          };
        };
      };
    }