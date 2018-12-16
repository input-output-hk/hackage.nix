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
        name = "property-list";
        version = "0.0.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/property-list";
      url = "";
      synopsis = "XML property list parser";
      description = "Parser for Apple's XML property list 1.0 format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dataenc)
          (hsPkgs.HaXml)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.pretty)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
          (hsPkgs.th-fold)
        ];
      };
    };
  }