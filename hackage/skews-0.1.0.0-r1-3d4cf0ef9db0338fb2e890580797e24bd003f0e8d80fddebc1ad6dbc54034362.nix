{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "skews"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/iij-ii/skews#readme";
      url = "";
      synopsis = "A very quick-and-dirty WebSocket server.";
      description = "A very quick-and-dirty WebSocket server. Intended for use with unit tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deque" or ((hsPkgs.pkgs-errors).buildDepError "deque"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          ];
        buildable = true;
        };
      tests = {
        "mock-ws-server-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."skews" or ((hsPkgs.pkgs-errors).buildDepError "skews"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deque" or ((hsPkgs.pkgs-errors).buildDepError "deque"))
            (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      };
    }