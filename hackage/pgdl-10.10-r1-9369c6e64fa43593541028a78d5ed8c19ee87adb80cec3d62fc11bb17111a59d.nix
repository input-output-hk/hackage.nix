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
      identifier = { name = "pgdl"; version = "10.10"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mingchuan";
      author = "mingchuan";
      homepage = "";
      url = "";
      synopsis = "browse directory listing webpages and download files from them.";
      description = "pgdl is a program for viewing and accessing directory listing webpage in terminal.\n\nBrowsing files on directory listings like <https://www.kernel.org/pub/> is often annoying and hard to find the sutff we want.\n\npgdl provids a simple interface for browsing and downloading the files in web-engine-generated directory listings.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."directory-listing-webpage-parser" or (buildDepError "directory-listing-webpage-parser"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ];
          };
        };
      };
    }