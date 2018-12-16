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
      specVersion = "1.6";
      identifier = {
        name = "text-binary";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/text-binary";
      url = "";
      synopsis = "Binary instances for text types";
      description = "OBSOLETE: text version 1.2.1 and higher provide Binary instances for text types out of the box.\n\nThe library provides binary instances for strict and lazy text types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.binary)
        ];
      };
    };
  }