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
      identifier = { name = "hexpat"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Evan Martin <martine@danga.com>";
      maintainer = "martine@danga.com";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/browse/?r=hexpat;a=summary";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "Expat (<http://expat.sourceforge.net/>) is a stream-oriented XML parser\nwritten in C.  It is known for being simple and fast.\n\nThere are already nice XML libraries in the Text.XML hierarchy.  The\nreason to use Expat is when speed is of concern.  From a benchmark\nthat compares getting the length of the root node of a HaXml tree\n(presumably forcing parsing the entire file) against running an Expat\nparser with a registered start node handler, Expat is about 12 times\nfaster.  This is not a fair benchmark; HaXml does a lot more than this\nExpat library.  But if Expat suffices, it is good for what it does.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = [ (pkgs."expat" or (sysDepError "expat")) ];
        };
      };
    }