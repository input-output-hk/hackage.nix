{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Network-NineP"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "High-level abstraction over 9P protocol";
      description = "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."NineP" or ((hsPkgs.pkgs-errors).buildDepError "NineP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."mstate" or ((hsPkgs.pkgs-errors).buildDepError "mstate"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."stateref" or ((hsPkgs.pkgs-errors).buildDepError "stateref"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."monad-peel" or ((hsPkgs.pkgs-errors).buildDepError "monad-peel"))
          ];
        buildable = true;
        };
      exes = { "test" = { buildable = true; }; };
      };
    }