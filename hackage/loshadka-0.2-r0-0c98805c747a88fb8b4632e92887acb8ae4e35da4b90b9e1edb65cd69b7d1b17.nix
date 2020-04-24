{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "loshadka"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "somu@so.mu";
      author = "George Timoschenko";
      homepage = "https://github.com/tvorcesky/loshadka";
      url = "";
      synopsis = "Minecraft 1.7 server proxy that answers to queries when the server is offline";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "loshadka" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."hex" or ((hsPkgs.pkgs-errors).buildDepError "hex"))
            ];
          buildable = true;
          };
        };
      };
    }