{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-s3"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2013 Timo von Holtz";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "https://github.com/tvh/yesod-s3";
      url = "";
      synopsis = "Simple Helper Library for using Amazon's Simple Storage Service (S3) with Yesod";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hS3" or ((hsPkgs.pkgs-errors).buildDepError "hS3"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }