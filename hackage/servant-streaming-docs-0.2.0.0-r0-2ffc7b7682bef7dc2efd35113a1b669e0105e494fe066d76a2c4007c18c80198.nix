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
        name = "servant-streaming-docs";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-streaming#readme";
      url = "";
      synopsis = "Client instances for the 'servant-docs' package.";
      description = "This package defines instances that allow using the 'StreamBody' and 'StreamResponse' combinators in combination with 'servant-docs'";
      buildType = "Simple";
    };
    components = {
      "servant-streaming-docs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-streaming)
        ];
      };
    };
  }