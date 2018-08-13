{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "digestive-functors-blaze";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Blaze frontend for the digestive-functors library";
      description = "This is a blaze frontend for the digestive-functors library.";
      buildType = "Simple";
    };
    components = {
      "digestive-functors-blaze" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }