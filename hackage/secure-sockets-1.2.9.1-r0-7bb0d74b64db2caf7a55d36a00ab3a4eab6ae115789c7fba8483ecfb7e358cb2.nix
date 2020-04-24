{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "secure-sockets"; version = "1.2.9.1"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010, Galois Inc. 2012";
      maintainer = "Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      author = "David Anderson <dave@natulte.net>";
      homepage = "http://code.google.com/p/secure-hs/";
      url = "";
      synopsis = "Secure point-to-point connectivity library";
      description = "This library simplifies the task of securely connecting two\nservers to each other, with strong authentication and\nencryption on the wire.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }