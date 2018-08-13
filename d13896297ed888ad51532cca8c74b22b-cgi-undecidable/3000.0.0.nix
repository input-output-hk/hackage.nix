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
        name = "cgi-undecidable";
        version = "3000.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Ian Lynagh";
      maintainer = "bjorn@bringert.net";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Undecidable instances for the cgi package.";
      description = "This package adds some useful type class instances to the\ncgi package. This is in a separate package to allow the cgi\npackage to be compatible with Haskell implementations that\ndon't support undecidable instances.";
      buildType = "Custom";
    };
    components = {
      "cgi-undecidable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.cgi)
        ];
      };
    };
  }