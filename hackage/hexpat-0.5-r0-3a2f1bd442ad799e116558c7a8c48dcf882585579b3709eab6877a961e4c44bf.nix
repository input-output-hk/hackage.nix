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
      identifier = { name = "hexpat"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh), Evan Martin, Matthew Pocock (drdozer)";
      homepage = "http://code.haskell.org/hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "Expat (<http://expat.sourceforge.net/>) is a stream-oriented XML parser\nwritten in C.\n\nThis package provides a Haskell binding for Expat, with a choice of /tree/ or\n/SAX-style/ representation, and it includes an /XML formatter/.  It is extensible\nto any string type, with @String@, @ByteString@ and @Text@ provided out of the box.\n\nThe emphasis is on speed and simplicity. If you want more complete and powerful\nXML libraries, consider using /HaXml/ or /HXT/ instead.\n\nNote that /hexpat/ has undergone a major API change since 0.3.x.\n\nBenchmark results on ghc 6.10.1 against HaXml for parsing a 4K xml file with non-threading runtime:\nHAXML: 2631 us, HEXPAT: low-level parse-no tree: 243 us, lazy-String: 1240 us,\nlazy-Text: 782 us, strict-String: 1125 us, strict-Text: 770 us\n\nWith -threaded:\nHAXML: 2667 us, HEXPAT: low-level parse-no tree: 472 us,\nlazy-String: 1453 us, lazy-Text: 1057 us, strict-String: 1342 us,\nstrict-Text: 943 us";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          ];
        libs = [ (pkgs."expat" or (sysDepError "expat")) ];
        buildable = true;
        };
      };
    }