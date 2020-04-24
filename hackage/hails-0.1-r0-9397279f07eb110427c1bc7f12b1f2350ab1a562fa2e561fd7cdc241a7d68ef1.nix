{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hails"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "IFC enforcing web platform framework";
      description = "Hails is a framework for building multi-app web platforms.\nThis module exports a library for building Hails platforms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lio" or ((hsPkgs.pkgs-errors).buildDepError "lio"))
          (hsPkgs."iterIO" or ((hsPkgs.pkgs-errors).buildDepError "iterIO"))
          (hsPkgs."iterio-server" or ((hsPkgs.pkgs-errors).buildDepError "iterio-server"))
          (hsPkgs."dclabel" or ((hsPkgs.pkgs-errors).buildDepError "dclabel"))
          (hsPkgs."mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "mongoDB"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."compact-string-fix" or ((hsPkgs.pkgs-errors).buildDepError "compact-string-fix"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."SimpleAES" or ((hsPkgs.pkgs-errors).buildDepError "SimpleAES"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          ];
        buildable = true;
        };
      };
    }