{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "presto-hdbc"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2015 Dropbox, Inc.";
      maintainer = "tomm@dropbox.com";
      author = "Tom McLaughlin";
      homepage = "";
      url = "";
      synopsis = "An HDBC connector for Presto";
      description = "Uses Presto's REST API to provide an HDBC interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          ];
        buildable = true;
        };
      };
    }