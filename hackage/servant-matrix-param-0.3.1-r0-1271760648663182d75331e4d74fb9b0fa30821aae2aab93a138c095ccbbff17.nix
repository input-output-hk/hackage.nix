{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      with-servant-aeson-specs = false;
      with-servant-server = false;
      with-servant-client = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-matrix-param"; version = "0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Matrix parameter combinator for servant";
      description = "Matrix parameter combinator for servant";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          ] ++ (pkgs.lib).optional (flags.with-servant-aeson-specs) (hsPkgs."servant-aeson-specs" or ((hsPkgs.pkgs-errors).buildDepError "servant-aeson-specs"))) ++ (pkgs.lib).optionals (flags.with-servant-server) [
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ]) ++ (pkgs.lib).optionals (flags.with-servant-client) [
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-aeson-specs" or ((hsPkgs.pkgs-errors).buildDepError "servant-aeson-specs"))
            (hsPkgs."servant-matrix-param" or ((hsPkgs.pkgs-errors).buildDepError "servant-matrix-param"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }