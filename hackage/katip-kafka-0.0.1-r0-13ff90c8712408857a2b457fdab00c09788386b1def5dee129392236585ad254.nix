{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-kafka"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Aleksey Uimanov";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://github.com/s9gf4ult/katip-kafka";
      url = "";
      synopsis = "Katip scribe to send logs to Kafka";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hw-kafka-client" or ((hsPkgs.pkgs-errors).buildDepError "hw-kafka-client"))
          (hsPkgs."katip" or ((hsPkgs.pkgs-errors).buildDepError "katip"))
          ];
        buildable = true;
        };
      };
    }