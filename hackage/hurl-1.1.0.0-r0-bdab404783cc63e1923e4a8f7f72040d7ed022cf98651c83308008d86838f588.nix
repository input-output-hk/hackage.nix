{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { http = true; file = true; data = true; freedesktop = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hurl"; version = "1.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "adrian@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://git.nzoss.org.nz/alcinnz/hurl";
      url = "";
      synopsis = "Haskell URL resolver";
      description = "Retrieves resources for a URI, whether they be HTTP(S), file:, or data:.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          ]) ++ (pkgs.lib).optional (flags.data) (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))) ++ (pkgs.lib).optionals (flags.freedesktop) [
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }