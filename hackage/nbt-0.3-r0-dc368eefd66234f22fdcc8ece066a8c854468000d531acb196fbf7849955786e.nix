{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "nbt"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "https://github.com/acfoltzer/nbt";
      url = "";
      synopsis = "A parser/serializer for Minecraft's Named Binary Tag (NBT) data format.";
      description = "This package includes a data type for the NBT file format, notably used to represent saved data in Minecraft.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }