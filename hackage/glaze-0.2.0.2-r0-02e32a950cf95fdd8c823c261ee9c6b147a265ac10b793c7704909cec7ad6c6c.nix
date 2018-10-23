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
        name = "glaze";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glaze#readme";
      url = "";
      synopsis = "Framework for rendering things with metadata/headers and values";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "glaze" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
        ];
      };
    };
  }