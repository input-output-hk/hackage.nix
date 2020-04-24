{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "hellage"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "";
      url = "";
      synopsis = "Distributed hackage mirror";
      description = "Distributed hackage mirror, based on Hellnet.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hellage" = {
          depends = [
            (hsPkgs."hellnet" or ((hsPkgs.pkgs-errors).buildDepError "hellnet"))
            (hsPkgs."Lucu" or ((hsPkgs.pkgs-errors).buildDepError "Lucu"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hjson" or ((hsPkgs.pkgs-errors).buildDepError "hjson"))
            (hsPkgs."hjpath" or ((hsPkgs.pkgs-errors).buildDepError "hjpath"))
            (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "hellage-genmeta" = {
          depends = [
            (hsPkgs."hellnet" or ((hsPkgs.pkgs-errors).buildDepError "hellnet"))
            (hsPkgs."hjpath" or ((hsPkgs.pkgs-errors).buildDepError "hjpath"))
            (hsPkgs."hjson" or ((hsPkgs.pkgs-errors).buildDepError "hjson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }