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
      specVersion = "1.24";
      identifier = {
        name = "SVD2HS";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "translate a SVD of a Microcontroller to Haskell tables";
      description = "translate a SVD of a Microcontroller to Haskell tables";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.xml-lens)
          (hsPkgs.xml-conduit)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
    };
  }