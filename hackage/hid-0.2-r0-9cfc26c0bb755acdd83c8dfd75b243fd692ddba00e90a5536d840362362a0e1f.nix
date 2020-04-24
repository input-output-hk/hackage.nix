{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { stdcall = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hid"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Interface to hidapi library";
      description = "Requires both hidapi-hidraw and hidapi-libusb.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."hidapi-hidraw" or ((hsPkgs.pkgs-errors).pkgConfDepError "hidapi-hidraw"))
          (pkgconfPkgs."hidapi-libusb" or ((hsPkgs.pkgs-errors).pkgConfDepError "hidapi-libusb"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }