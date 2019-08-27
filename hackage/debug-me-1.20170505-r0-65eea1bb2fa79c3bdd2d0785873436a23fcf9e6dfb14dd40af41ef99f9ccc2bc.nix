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
      specVersion = "1.8";
      identifier = { name = "debug-me"; version = "1.20170505"; };
      license = "AGPL-3.0-only";
      copyright = "2017 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "https://debug-me.branchable.com/";
      url = "";
      synopsis = "secure remote debugging";
      description = "Debugging a problem over email is slow, tedious, and hard. The developer\nneeds to see your problem to understand it. Debug-me aims to make debugging\nfast, fun, and easy, by letting the developer access your computer remotely,\nso they can immediately see and interact with the problem. Making your\nproblem their problem gets it fixed fast.\n\nA debug-me session is logged and signed with the developer's GnuPG\nkey, producing a chain of evidence of what they saw and what they did.\nSo the developer's good reputation is leveraged to make debug-me secure.\n\nWhen you start debug-me without any options, it will connect to a debug-me\nserver, and print out an url that you can give to the developer to get\nthem connected to you. Then debug-me will show you their GnuPG key and who\nhas signed it. If the developer has a good reputation, you can proceed\nto let them type into your console in a debug-me session. Once the\nsession is done, the debug-me server will email you the signed\nevidence of what the developer did in the session.\n\nIf the developer did do something bad, you'd have proof that they cannot\nbe trusted, which you can share with the world. Knowing that is the case\nwill keep most developers honest.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "debug-me" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."posix-pty" or (buildDepError "posix-pty"))
            (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."sandi" or (buildDepError "sandi"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."protobuf" or (buildDepError "protobuf"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            ];
          };
        };
      };
    }