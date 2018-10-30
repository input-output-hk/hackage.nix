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
      specVersion = "1.10";
      identifier = {
        name = "cereal-text";
        version = "0.1.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ukoehler@btronik.de";
      author = "Uli Köhler";
      homepage = "https://github.com/ulikoehler/cereal-text";
      url = "";
      synopsis = "Data.Text instances for the cereal serialization library";
      description = "Data.Text instances for the cereal serialization library.\n\nProvides instances for Text and lazy Text.\nUses UTF-8 encoding for serialization.\n\nUse\n@import Data.Serialize.Text ()@\nto import instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.text)
        ];
      };
    };
  }