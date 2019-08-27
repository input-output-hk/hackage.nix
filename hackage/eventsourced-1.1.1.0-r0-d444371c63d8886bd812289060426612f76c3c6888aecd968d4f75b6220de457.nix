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
      identifier = { name = "eventsourced"; version = "1.1.1.0"; };
      license = "MIT";
      copyright = "2016 Richard Towers";
      maintainer = "richard@richard-towers.com";
      author = "Richard Towers";
      homepage = "https://github.com/richardTowers/eventsourced#readme";
      url = "";
      synopsis = "Server-Sent Events the UNIX way";
      description = "@eventsourced@ streams stdin to a TCP\\/IP port as @text\\/event-source@.\n\nOn the server:\n\n\n> \$ ping example.com | eventsourced --port=1337 --allow-origin=localhost\n\n\nIn the browser:\n\n\n>  new EventSource('http://0.0.0.0:1337').onmessage = e => console.log(e.data)\n>  PING example.com (93.184.216.34): 56 data bytes\n>  64 bytes from 93.184.216.34: icmp_seq=0 ttl=50 time=86.586 ms\n>  64 bytes from 93.184.216.34: icmp_seq=1 ttl=50 time=89.107 ms\n>  64 bytes from 93.184.216.34: icmp_seq=2 ttl=50 time=88.805 ms\n>  64 bytes from 93.184.216.34: icmp_seq=3 ttl=50 time=88.843 ms\n>  64 bytes from 93.184.216.34: icmp_seq=4 ttl=50 time=89.181 ms\n>  64 bytes from 93.184.216.34: icmp_seq=5 ttl=50 time=89.159 ms\n>  64 bytes from 93.184.216.34: icmp_seq=6 ttl=50 time=87.214 ms\n>  ...\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          ];
        };
      exes = {
        "eventsourced" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."eventsourced" or (buildDepError "eventsourced"))
            ];
          };
        };
      tests = {
        "eventsourced-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."eventsourced" or (buildDepError "eventsourced"))
            ];
          };
        };
      };
    }