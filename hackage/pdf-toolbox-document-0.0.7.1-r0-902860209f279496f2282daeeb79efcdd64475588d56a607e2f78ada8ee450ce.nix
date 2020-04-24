{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pdf-toolbox-document"; version = "0.0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2012-2016";
      maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/pdf-toolbox";
      url = "";
      synopsis = "A collection of tools for processing PDF files.";
      description = "Mid level tools for processing PDF files.\n\nLevel of abstraction: document, catalog, page";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."cipher-rc4" or ((hsPkgs.pkgs-errors).buildDepError "cipher-rc4"))
          (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."pdf-toolbox-core" or ((hsPkgs.pkgs-errors).buildDepError "pdf-toolbox-core"))
          (hsPkgs."pdf-toolbox-content" or ((hsPkgs.pkgs-errors).buildDepError "pdf-toolbox-content"))
          ];
        buildable = true;
        };
      };
    }