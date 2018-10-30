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
        name = "servant-pandoc";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Use Pandoc to render servant API documentation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pandoc-types)
          (hsPkgs.servant-docs)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }