{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "n2o-web"; version = "0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o-hs#readme";
      url = "";
      synopsis = "N2O adapter for WebSockets";
      description = "Poor man's WebSocket and HTTP static servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."n2o" or ((hsPkgs.pkgs-errors).buildDepError "n2o"))
          (hsPkgs."n2o-protocols" or ((hsPkgs.pkgs-errors).buildDepError "n2o-protocols"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bert" or ((hsPkgs.pkgs-errors).buildDepError "bert"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fmt" or ((hsPkgs.pkgs-errors).buildDepError "fmt"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          ];
        buildable = true;
        };
      };
    }