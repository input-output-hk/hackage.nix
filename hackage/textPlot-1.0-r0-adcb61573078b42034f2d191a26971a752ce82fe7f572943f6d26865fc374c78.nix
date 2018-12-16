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
      specVersion = "1.2";
      identifier = {
        name = "textPlot";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "will.t.murphy@gmail.com";
      author = "William Tennien Murphy";
      homepage = "";
      url = "";
      synopsis = "Plot functions in text.";
      description = "Graph plots of y(x), parametric (x(t),y(t)),\nand polar r(phi) functions with ASCII text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }