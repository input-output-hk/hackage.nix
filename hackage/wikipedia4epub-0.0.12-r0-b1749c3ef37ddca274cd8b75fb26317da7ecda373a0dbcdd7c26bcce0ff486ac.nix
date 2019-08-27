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
      identifier = { name = "wikipedia4epub"; version = "0.0.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/wikipedia4epub.html";
      url = "";
      synopsis = "Wikipedia EPUB E-Book construction from Firefox history.";
      description = "\nWikipedia EPUB E-Book construction from Firefox History.\nIt dumps history and select only wikipedia articles, fetch\nthem and strip thier content before put into EPUB book\nfor E-Book readers.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."url" or (buildDepError "url"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."epub" or (buildDepError "epub"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ];
        };
      exes = { "wiki4e-mkepub-subtree" = {}; };
      };
    }