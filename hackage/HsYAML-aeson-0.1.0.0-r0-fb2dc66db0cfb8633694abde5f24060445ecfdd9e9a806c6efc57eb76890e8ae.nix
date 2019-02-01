{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "HsYAML-aeson"; version = "0.1.0.0"; };
      license = "GPL-2.0-or-later";
      copyright = "2018-2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "JSON to YAML Adapter";
      description = "The [YAML 1.2](https://yaml.org/spec/1.2/spec.html) format provides\na much richer data-model and feature-set\nthan the [JavaScript Object Notation (JSON)](https://tools.ietf.org/html/rfc7159) format.\nHowever, sometimes it's desirable to ignore the extra capabilities\nand treat YAML as if it was merely a more convenient markup format\nfor humans to write JSON data. To this end this module provides a\ncompatibility layer atop [HsYAML](https://hackage.haskell.org/package/HsYAML)\nwhich allows decoding YAML documents in the more limited JSON data-model while also providing\nconvenience by reusing [aeson](https://hackage.haskell.org/package/aeson)'s\n'FromJSON' instances for decoding the YAML data into native Haskell data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HsYAML)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      };
    }