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
      identifier = { name = "zmcat"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/zmcat";
      url = "";
      synopsis = "Command-line tool for ZeroMQ.";
      description = "ZeroMQ is a handy way to communicate between applications:\n\n[Rationale:] Zmcat is an handy command-line tool to debug or communicate\nwith ZeroMQ applications from the shell.\nOne use of zmcat is to easily audit, monitor, add cron-jobs shell scripts\nwhich speak zmq.\n\n[Limitations:]\nA limitation is that Zmcat only supports printable text. Support for\nrandom binary streams will come later.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."zeromq3-haskell" or (buildDepError "zeromq3-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "zmcat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zmcat" or (buildDepError "zmcat"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }