{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "voicebase"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Daisee Pty Ltd";
      maintainer = "jappie.klooster@daisee.com";
      author = "Jappie Klooster";
      homepage = "https://bitbucket.org/daisee/voicebase";
      url = "";
      synopsis = "Upload audio files to voicebase to get a transcription";
      description = "voicebase bindings for <http://voicebase.readthedocs.io/en/v2-beta/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or ((hsPkgs.pkgs-errors).buildDepError "http-client-openssl"))
          (hsPkgs."json-autotype" or ((hsPkgs.pkgs-errors).buildDepError "json-autotype"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          ];
        buildable = true;
        };
      exes = {
        "voicebase" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
            (hsPkgs."options" or ((hsPkgs.pkgs-errors).buildDepError "options"))
            (hsPkgs."voicebase" or ((hsPkgs.pkgs-errors).buildDepError "voicebase"))
            ];
          buildable = true;
          };
        };
      tests = {
        "voicebase-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."voicebase" or ((hsPkgs.pkgs-errors).buildDepError "voicebase"))
            ];
          buildable = true;
          };
        };
      };
    }