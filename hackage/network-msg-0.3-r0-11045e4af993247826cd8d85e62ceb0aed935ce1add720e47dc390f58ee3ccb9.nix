{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-msg"; version = "0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Lana Black <sickmind@i2pmail.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Recvmsg and sendmsg bindings.";
      description = "Bindings to sendmsg and recvmsg POSIX functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }