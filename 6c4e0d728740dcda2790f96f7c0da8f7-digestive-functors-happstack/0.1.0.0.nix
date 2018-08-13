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
        name = "digestive-functors-happstack";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Happstack backend for the digestive-functors library";
      description = "This is a happstack backend for the digestive-functors\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "digestive-functors-happstack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.happstack-server)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }