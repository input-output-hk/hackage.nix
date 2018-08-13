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
      specVersion = "0";
      identifier = {
        name = "generic-xml";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2007 HAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Marshalling Haskell values to/from XML";
      description = "Marshalling Haskell values to/from XML.";
      buildType = "Custom";
    };
    components = {
      "generic-xml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.syb-with-class)
          (hsPkgs.HaXml)
        ];
      };
    };
  }