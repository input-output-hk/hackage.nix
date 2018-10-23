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
        name = "glazier-pipes";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-pipes#readme";
      url = "";
      synopsis = "Converts Glazier widgets into a Pipe.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "glazier-pipes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.glazier)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-misc)
          (hsPkgs.transformers)
        ];
      };
    };
  }