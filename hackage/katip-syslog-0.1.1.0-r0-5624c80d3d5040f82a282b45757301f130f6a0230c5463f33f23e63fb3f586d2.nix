{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-syslog"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 IRIS Connect Engineering Team";
      maintainer = "chrisd@irisconnect.co.uk";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/iconnect/katip-syslog#readme";
      url = "";
      synopsis = "Syslog Katip Scribe";
      description = "A simple Katip Scribe which logs to syslog";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."katip" or ((hsPkgs.pkgs-errors).buildDepError "katip"))
          (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."string-conv" or ((hsPkgs.pkgs-errors).buildDepError "string-conv"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "katip-syslog-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."katip-syslog" or ((hsPkgs.pkgs-errors).buildDepError "katip-syslog"))
            ];
          buildable = true;
          };
        };
      };
    }