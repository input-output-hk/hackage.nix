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
      identifier = { name = "iterIO"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "levya@cs.stanford.edu, deian@cs.stanford.edu";
      author = "David Mazieres, Deian Stefan, Amit Levy";
      homepage = "http://www.scs.stanford.edu/~dm/iterIO";
      url = "";
      synopsis = "Iteratee-based IO with pipe operators";
      description = "Iteratee-based IO is an alternative to lazy IO that offers\nbetter error handling, referential transparency, and\nconvenient composition of protocol layers or parsers.  This\npackage provides iteratees based around /pipe/ operators for\nhooking together application components and directing data\nflow.  New users should see the tutorial in the \"Data.IterIO\"\nmodule documentation.  Highlights of the library include:\n\n* Heavy emphasis on ease of use, ease of learning, and\nuniformity of mechanism.\n\n* Copious documentation.\n\n* Consistent EOF and error handling to avoid resource leaks\nand other issues in corner cases.\n\n* A set of iteratee parsing combinators providing LL(*)\nparsing while generally not consuming large amounts of\nmemory for backtracking.\n\n* Seamless integration with attoparsec for LL(1) parsing.\n\nSee \"Data.IterIO\" for a discussion of the differences between\niterIO and the two previous iteratee implementations (iteratee\nand enumerator).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        libs = [ (pkgs."z" or (sysDepError "z")) ];
        };
      };
    }