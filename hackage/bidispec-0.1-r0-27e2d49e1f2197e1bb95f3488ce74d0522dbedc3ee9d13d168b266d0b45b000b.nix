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
        name = "bidispec";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@openfactis.org>";
      author = "David Leuschner";
      homepage = "";
      url = "";
      synopsis = "Specification of generators and parsers";
      description = "This is a generalisation of the idea behind the XML pickle/unpickle\nfunctions of HXT.  It allows to simulatanously specify functions for\nparsing and generating.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
    };
  }