{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "NTRU"; version = "1.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2014, CyberPoint International, LLC";
      maintainer = "opensource@cyberpointllc.com";
      author = "Theo Levine, Tom Cornelius, Elizabeth Hughes, CyberPoint International LLC.";
      homepage = "";
      url = "";
      synopsis = "NTRU Cryptography";
      description = "A Haskell implementation of the NTRU cryptographic system, following the IEEE Standard Specification for Public Key Crpytographic Techniques Based on Hard Problems over Lattices (IEEE Std 1363.1-2008)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."polynomial" or ((hsPkgs.pkgs-errors).buildDepError "polynomial"))
          (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }