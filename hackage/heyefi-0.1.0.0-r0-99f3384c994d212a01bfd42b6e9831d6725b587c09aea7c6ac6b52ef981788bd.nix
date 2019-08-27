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
      identifier = { name = "heyefi"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ryan@ryantm.com";
      author = "Ryan Mulligan";
      homepage = "https://github.com/ryantm/heyefi";
      url = "";
      synopsis = "A server for Eye-Fi SD cards.";
      description = "This server listens for Eye-Fi cards that want to upload files to a computer and stores them in an upload directory. It is meant to be run as a system daemon.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "heyefi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."HandsomeSoup" or (buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."multipart" or (buildDepError "multipart"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      tests = {
        "test-heyefi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."HandsomeSoup" or (buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."multipart" or (buildDepError "multipart"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }