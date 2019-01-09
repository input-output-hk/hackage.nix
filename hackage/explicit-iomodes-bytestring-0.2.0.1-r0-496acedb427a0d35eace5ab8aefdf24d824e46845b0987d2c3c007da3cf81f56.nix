{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "explicit-iomodes-bytestring";
        version = "0.2.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/explicit-iomodes-bytestring/";
      url = "";
      synopsis = "Extends explicit-iomodes with ByteString operations";
      description = "Extends @explicit-iomodes@ with @ByteString@ operations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.explicit-iomodes)
          ];
        };
      };
    }