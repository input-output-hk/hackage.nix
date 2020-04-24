{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; network-bytestring = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-enumerator"; version = "0.7.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with enumerator interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid direct usage of enumerators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-enumerator"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."zlib-enum" or ((hsPkgs.pkgs-errors).buildDepError "zlib-enum"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."blaze-builder-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder-enumerator"))
          (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."tls-extra" or ((hsPkgs.pkgs-errors).buildDepError "tls-extra"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."certificate" or ((hsPkgs.pkgs-errors).buildDepError "certificate"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."asn1-data" or ((hsPkgs.pkgs-errors).buildDepError "asn1-data"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "network-bytestring"))
            ]
          else [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]);
        buildable = true;
        };
      exes = {
        "http-enumerator" = { buildable = if flags.test then true else false; };
        };
      };
    }