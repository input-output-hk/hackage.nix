{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { exe = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "HsYAML-aeson"; version = "0.2.0.1"; };
      license = "GPL-2.0-or-later";
      copyright = "2018-2019 Herbert Valerio Riedel";
      maintainer = "Simon Jakobi, Andreas Abel";
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
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "yaml-test" = {
          depends = (pkgs.lib).optionals (flags.exe) [
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."HsYAML-aeson" or (errorHandler.buildDepError "HsYAML-aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = if flags.exe then true else false;
          };
        };
      };
    }