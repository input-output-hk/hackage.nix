{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "HsParrot";
        version = "0.0.2.20110925";
      };
      license = "BSD-3-Clause";
      copyright = "Audrey Tang, 2008";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Haskell integration with Parrot virtual machine";
      description = "Haskell integration with Parrot virtual machine";
      buildType = "Simple";
    };
    components = {
      "HsParrot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.HsSyck)
          (hsPkgs.pugs-DrIFT)
        ];
      };
    };
  }