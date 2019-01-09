{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-utils"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014, Silk B.V";
      maintainer = "code@silk.co";
      author = "Silk. B.V.";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with Aeson.";
      description = "Utilities for working with Aeson.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.text)
          ];
        };
      };
    }