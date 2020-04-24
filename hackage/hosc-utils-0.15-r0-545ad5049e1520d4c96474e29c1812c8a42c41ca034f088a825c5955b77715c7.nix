{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hosc-utils"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hosc-utils";
      url = "";
      synopsis = "Haskell Open Sound Control Utilities";
      description = "hosc-utils";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hosc-json-cat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hosc-json" or ((hsPkgs.pkgs-errors).buildDepError "hosc-json"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "hosc-json-cgi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hosc-json" or ((hsPkgs.pkgs-errors).buildDepError "hosc-json"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."www-minus" or ((hsPkgs.pkgs-errors).buildDepError "www-minus"))
            ];
          buildable = true;
          };
        "hosc-json-console" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hosc-json" or ((hsPkgs.pkgs-errors).buildDepError "hosc-json"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "hosc-json-nrt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hosc-json" or ((hsPkgs.pkgs-errors).buildDepError "hosc-json"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "hosc-json-ws" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hosc-json" or ((hsPkgs.pkgs-errors).buildDepError "hosc-json"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      };
    }