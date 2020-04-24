{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "HsYAML-aeson"; version = "0.2.0.0"; };
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
          (hsPkgs."HsYAML" or ((hsPkgs.pkgs-errors).buildDepError "HsYAML"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }