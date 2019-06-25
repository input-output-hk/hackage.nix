{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "xdg-desktop-entry"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "";
      url = "";
      synopsis = "Parse files conforming to the xdg desktop entry spec";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ConfigFile)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.multimap)
          (hsPkgs.transformers)
          (hsPkgs.safe)
          (hsPkgs.unix)
          ];
        };
      };
    }