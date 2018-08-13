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
        name = "heist";
        version = "0.8.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Doug Beardsley, Gregory Collins";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "An (x)html templating system";
      description = "An (x)html templating system";
      buildType = "Simple";
    };
    components = {
      "heist" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.filepath)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.xmlhtml)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }