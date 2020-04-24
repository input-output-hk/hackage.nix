{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "servant-jsonrpc-client"; version = "1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "Ian Shipman <ics@gambolingpangolin.com>";
      author = "Ian Shipman <ics@gambolingpangolin.com>";
      homepage = "https://github.com/GambolingPangolin/servant-jsonrpc";
      url = "";
      synopsis = "Generate JSON-RPC servant clients";
      description = "Use this package to generate servant client functions that interact with a\nremote server via JSON-RPC over HTTP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client-core" or ((hsPkgs.pkgs-errors).buildDepError "servant-client-core"))
          (hsPkgs."servant-jsonrpc" or ((hsPkgs.pkgs-errors).buildDepError "servant-jsonrpc"))
          ];
        buildable = true;
        };
      };
    }