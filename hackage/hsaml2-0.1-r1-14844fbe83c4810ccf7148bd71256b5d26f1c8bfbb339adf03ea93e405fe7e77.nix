let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsaml2"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "2016";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "OASIS Security Assertion Markup Language (SAML) V2.0";
      description = "Direct implementation of the SAML XML standard (https://www.oasis-open.org/standards#samlv2.0), along with some related dependencies.  This is currently partial, as the standard is quite extensive, but is sufficient to build a functioning SP and fully validate responses.  The module layout basically follows the standard definition documentation.  Its use still requires a fairly extensive understanding of SAML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."asn1-encoding" or (buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."hxt-charproperties" or (buildDepError "hxt-charproperties"))
          (hsPkgs."hxt-unicode" or (buildDepError "hxt-unicode"))
          (hsPkgs."invertible" or (buildDepError "invertible"))
          (hsPkgs."invertible-hxt" or (buildDepError "invertible-hxt"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libxml-2.0" or (pkgConfDepError "libxml-2.0"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hsaml2" or (buildDepError "hsaml2"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."hxt-http" or (buildDepError "hxt-http"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."x509" or (buildDepError "x509"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }