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
        name = "HsParrot";
        version = "0.0.2";
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
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.HsSyck)
          (hsPkgs.pugs-DrIFT)
        ];
      };
    };
  }