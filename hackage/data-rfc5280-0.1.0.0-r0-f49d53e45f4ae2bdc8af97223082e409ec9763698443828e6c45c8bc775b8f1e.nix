{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "data-rfc5280"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/data-rfc5280#readme";
      url = "";
      synopsis = "Represent the standard X.509v3 certificate extensions";
      description = "@data-rfc5280@ provides Haskell types for the standard X.509v3\ncertificate extensions defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2)\n\nExtensions covered include @BasicConstraints@, @KeyUsage@,\n@ExtendedKeyUsage@, @SubjectAltName@, @IssuerAltName@,\n@AuthorityKeyIdentifier@, @SubjectKeyIdentifier@, @CertificatePolicies@,\n@PolicyMappings@, @NameConstraints@, @CRLDistributionPoints@,\n@AuthorityInfoAccess@, and @InhibitAnyPolicy@.\n\nThe package also provides typeclasses that support serialisation to to OpenSSL configuration format\n\nSee the [README](https://github.com/adetokunbo/data-rfc5280/blob/main/README.md) for more details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."data-rfc5280" or (errorHandler.buildDepError "data-rfc5280"))
          ];
          buildable = true;
        };
      };
    };
  }