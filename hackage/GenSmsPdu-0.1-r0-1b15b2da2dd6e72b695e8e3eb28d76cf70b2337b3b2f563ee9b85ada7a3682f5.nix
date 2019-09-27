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
      specVersion = "1.2";
      identifier = { name = "GenSmsPdu"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Kwanghoon Choi <lazyswamp@gmail.com>";
      maintainer = "Kwanghoon Choi <lazyswamp@gmail.com>";
      author = "Kwanghoon Choi <lazyswamp@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Automatic SMS message generator";
      description = "GenSmsPdu is a library for random generation of 3GPP SMS\nmessages. It defines a big data type for 3GPP defined\nSMS message formats such as SMS-SUBMIT and SMS-DELIVER \\[1\\].\nUsing QuickCheck, it can generate a list of random SMS messages\nin the data type automatically.\n\nGenSmsPdu offers an encoder to convert an SMS message into\nan SMS PDU (Protocol Data Unit) in bytes, and a decoder to do the reverse. Currently,\nit generates only single paged SMS messages.\n\n\\[1\\] 3GPP TS 23.040 V6.7.0, 3rd Generation Partnership Project\nTechnical Specification Group Core Network and Terminals;\nTechnical Realization of the Short Message Service (SMS)\n(Release 6), March 2006. http:\\/\\/www.3gpp.org.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gensmspdu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }