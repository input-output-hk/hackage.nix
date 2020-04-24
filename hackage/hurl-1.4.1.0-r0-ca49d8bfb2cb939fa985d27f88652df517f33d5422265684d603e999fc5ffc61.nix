{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      http = true;
      gemini = true;
      file = true;
      data = true;
      freedesktop = true;
      appstream = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hurl"; version = "1.4.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "adrian@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://git.adrian.geek.nz/hurl.git/";
      url = "";
      synopsis = "Haskell URL resolver";
      description = "Retrieves resources for a URI, whether they be HTTP(S), gemini:, file:, or data:.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ] ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          ]) ++ (pkgs.lib).optional (flags.gemini) (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))) ++ (pkgs.lib).optional (flags.data) (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))) ++ (pkgs.lib).optional (flags.freedesktop) (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))) ++ (pkgs.lib).optionals (flags.freedesktop && flags.appstream) [
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "hurl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hurl" or ((hsPkgs.pkgs-errors).buildDepError "hurl"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }