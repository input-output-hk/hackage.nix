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
      specVersion = "1.18";
      identifier = { name = "unbreak"; version = "0.3.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2015 Kinoru";
      maintainer = "xkinoru@gmail.com";
      author = "Kinoru";
      homepage = "https://e.xtendo.org/scs/unbreak";
      url = "";
      synopsis = "Secure and resilient remote file storage utility";
      description = "unbreak is a secure remote file storage utility written in Haskell.\n\nOther than a working SSH server and an empty directory, it requires no\nconfiguration on the server-side to set up the file storage. Leveraging\nexisting commands, it simplifies the process of fetching and saving files\nwith a client-side encryption. It aims to make the work flow natural, as\nif the user is using an unencrypted local file, while keeping the\nlocal-remote interaction as rare as possible to be usable even with a\nhighly unstable Internet connection.\n\nunbreak uses modern crypto primitives such as scrypt and ChaCha20-Poly1305\nto protect user security and privacy. Some of its usage is documented in\nthe 'Unbreak.Crypto' module. The API is internal and you should not\ndirectly depend on them from your code, but browsing the source code from\nthe API docs and copying them to adapt to another free software is\nhighly encouraged.\n\nFor a detailed information on how to actually use this utility, please\nrefer to its official web page at <https://e.xtendo.org/scs/unbreak>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "unbreak" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."unbreak" or (buildDepError "unbreak"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }