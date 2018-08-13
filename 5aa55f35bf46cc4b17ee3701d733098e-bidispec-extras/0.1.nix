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
        name = "bidispec-extras";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@openfactis.org>";
      author = "David Leuschner";
      homepage = "";
      url = "";
      synopsis = "Extra helper functions for bidirectional specifications";
      description = "Provides generic helper functions for defining bidirectionally executable\nspecifications (a.k.a. parsers / generators).  The functions and types\nfrom this module extend the core functionality provided by the bidispec\npackage.c";
      buildType = "Simple";
    };
    components = {
      "bidispec-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.dataenc)
        ];
      };
    };
  }