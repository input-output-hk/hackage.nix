{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "qrcode-juicypixels"; version = "0.8.0"; };
      license = "MIT";
      copyright = "2018 ALeX Kazik";
      maintainer = "alex@kazik.de";
      author = "ALeX Kazik";
      homepage = "https://github.com/alexkazik/qrcode#readme";
      url = "";
      synopsis = "Converts a qrcode-core image to JuicyPixels";
      description = "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-juicypixels#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."qrcode-core" or ((hsPkgs.pkgs-errors).buildDepError "qrcode-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }