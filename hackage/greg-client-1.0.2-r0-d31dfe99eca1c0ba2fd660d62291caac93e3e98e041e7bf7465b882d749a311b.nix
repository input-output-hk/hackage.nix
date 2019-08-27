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
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "greg-client"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, Dmitry Astapov 2010";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>, Dmitry Astapov <dastapov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>, Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://code.google.com/p/greg/";
      url = "";
      synopsis = "A scalable distributed logger with a high-precision global time axis.";
      description = "Haskell client to the \\\"greg\\\" distributed logger with a high-precision global time axis (<http://code.google.com/p/greg/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."system-uuid" or (buildDepError "system-uuid"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      };
    }