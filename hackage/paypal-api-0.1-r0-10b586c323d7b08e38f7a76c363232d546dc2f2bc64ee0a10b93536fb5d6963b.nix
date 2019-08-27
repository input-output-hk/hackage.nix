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
      specVersion = "1.6";
      identifier = { name = "paypal-api"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 by Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "http://code.haskell.org/paypal-api/";
      url = "";
      synopsis = "PayPal API, currently supporting \"ButtonManager\"";
      description = "This package is a moderately successful attempt to tame the confusingness of\nPayPal's API using Haskell types. Currently only the ButtonManager API is\nsupported.\n\nType families are used extensively to encode PayPal's validation rules,\nso they can be checked at compile time. Haddock doesn't get all the type\nfamily stuff across, so you may find it easier to read the source code.\nBecause PayPal's documents leave you to guessing, it will take trial and\nerror to get the logic in this package correct, so please contribute your\nfixes. Code changes to this package are likely to break your code, so please\ndepend on a specific version.\n\nTake a look at example.hs.\n\n/The benefits of using PayPal:/\n\n* You can accept credit cards on your website priced for low transaction volumes.\n\n/The drawbacks of using PayPal:/\n\n* PayPal tries to harvest your customers, by annoying them into becoming PayPal members.\n\n* If you are outside the USA, you can't have different shipping rates by country, which is...\nbeyond pathetic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."http-enumerator" or (buildDepError "http-enumerator"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."web-encodings" or (buildDepError "web-encodings"))
          ];
        };
      };
    }