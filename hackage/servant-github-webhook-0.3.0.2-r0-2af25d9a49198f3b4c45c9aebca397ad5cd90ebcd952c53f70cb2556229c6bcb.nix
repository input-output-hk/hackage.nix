{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-github-webhook"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "Jacob Thomas Errington 2016";
      maintainer = "servant-github-webhook@mail.jerrington.me";
      author = "Jacob Thomas Errington";
      homepage = "https://github.com/tsani/servant-github-webhook";
      url = "";
      synopsis = "Servant combinators to facilitate writing GitHub webhooks.";
      description = "This package provides servant combinators that make writing safe GitHub\nwebhooks very simple.\n\nIt features automatic verification of the digital signatures provided by\nGitHub in the webhook HTTP requests as well as route dispatching based on\nrepository event type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          (hsPkgs."github" or ((hsPkgs.pkgs-errors).buildDepError "github"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ] ++ (if flags.old-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      tests = {
        "multikey" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-github-webhook" or ((hsPkgs.pkgs-errors).buildDepError "servant-github-webhook"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.old-base) (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "singlekey" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-github-webhook" or ((hsPkgs.pkgs-errors).buildDepError "servant-github-webhook"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.old-base) (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        };
      };
    }