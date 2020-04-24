{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sws"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Derek Elkins";
      maintainer = "derek.a.elkins@gmail.com";
      author = "Derek Elkins";
      homepage = "";
      url = "";
      synopsis = "A simple web server for serving directories, similar to weborf.";
      description = "The main drivers for this application were Windows (and Linux) support and\nsecurity, and to a lesser extent performance.  Security is improved over\nweborf by using Haskell, supporting TLS, and explicitly NOT supporting CGIs\nof any kind.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sws" = {
          depends = [
            (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
            (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."crypto-pubkey" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey"))
            (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."pem" or ((hsPkgs.pkgs-errors).buildDepError "pem"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-static"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            ];
          buildable = true;
          };
        };
      };
    }