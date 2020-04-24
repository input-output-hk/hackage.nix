{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wuss"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2015 Taylor Fausak <taylor@fausak.me>";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "Taylor Fausak <taylor@fausak.me>";
      homepage = "http://taylor.fausak.me/wuss/";
      url = "";
      synopsis = "Secure WebSocket (WSS) clients";
      description = "Wuss is a library that lets you easily create secure WebSocket clients over\nthe WSS protocol.\n\nPlease read <https://github.com/tfausak/wuss#readme the readme> for example\nusage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."wuss" or ((hsPkgs.pkgs-errors).buildDepError "wuss"))
            ];
          buildable = true;
          };
        };
      };
    }