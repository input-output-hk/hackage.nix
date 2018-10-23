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
        name = "hakyll";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "A simple static site generator library.";
      description = "A simple static site generator library , mainly aimed at\ncreating blogs.";
      buildType = "Simple";
    };
    components = {
      "hakyll" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.regex-compat)
          (hsPkgs.network)
          (hsPkgs.mtl)
        ];
      };
    };
  }