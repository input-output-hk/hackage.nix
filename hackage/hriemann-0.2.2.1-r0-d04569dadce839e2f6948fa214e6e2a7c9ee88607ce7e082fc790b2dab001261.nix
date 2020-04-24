{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hriemann"; version = "0.2.2.1"; };
      license = "MIT";
      copyright = "2017 David Smith";
      maintainer = "shmish111@gmail.com";
      author = "David Smith";
      homepage = "https://github.com/shmish111/hriemann";
      url = "";
      synopsis = "Initial project template from stack";
      description = "A Riemann Client for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."protocol-buffers" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."hostname" or ((hsPkgs.pkgs-errors).buildDepError "hostname"))
          (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
          (hsPkgs."kazura-queue" or ((hsPkgs.pkgs-errors).buildDepError "kazura-queue"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          ];
        buildable = true;
        };
      exes = {
        "hriemann-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hriemann" or ((hsPkgs.pkgs-errors).buildDepError "hriemann"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hriemann-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hriemann" or ((hsPkgs.pkgs-errors).buildDepError "hriemann"))
            ];
          buildable = true;
          };
        };
      };
    }