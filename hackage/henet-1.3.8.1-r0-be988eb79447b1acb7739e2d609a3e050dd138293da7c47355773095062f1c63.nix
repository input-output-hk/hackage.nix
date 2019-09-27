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
      identifier = { name = "henet"; version = "1.3.8.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ericson2314@Yahoo.com";
      author = "John Ericson";
      homepage = "";
      url = "";
      synopsis = "Bindings and high level interface for to ENet v1.3.8";
      description = "ENet is a networking library on top of UDP. In it's own words:\n\n\"ENet's purpose is to provide a relatively thin, simple and robust network\ncommunication layer on top of UDP (User Datagram Protocol). The primary\nfeature it provides is optional reliable, in-order delivery of packets.\n\nENet omits certain higher level networking features such as authentication,\nlobbying, server discovery, encryption, or other similar tasks that are\nparticularly application specific so that the library remains flexible,\nportable, and easily embeddable.\"\n\nThis library contains both bindings and a slightly cleaned up interface on\ntop. The bindings are as close to the original as possible. Names are striped\nof the leading \"enet_\" and converted to CamelCase, and the occasional newtype\nis used instead, but otherwise all functions signatures are exactly the\nsame. The bindings are in \"Network.ENet.Bindings\".\n\nThe higher level interface is all other exposed modules. Functions like\n\"enet_host_*\" are placed in \"Network.ENet.Host\". All functions are present\nexcept for the \"enet_socket*\" functions: they are just wrappers of the Posix\nSockets Interface, which is already provided in Haskell by the \"network\"\npackage. Changes are fairly minimal: \"Out-Args\" are now returned with a tuple,\nconversions between C and Haskell types happen automatically (when Haskell\nversions exists), and nullable pointer types have been replaced with\nMaybes. In short, there should be very few reasons to use the raw bindings\nover the \"nice\" interface.\n\nAt the moment, consult the ENet website for documentation. In the vast\nmajority of cases the documentation there should apply here exactly, I will\ntry to add Haddock documentation for everywhere it does not.\n\nENet currently only supports IPv4 at the moment (though that should soon\nchange), and is only safe to use as when used in one thread. Richer native\nnetworking libraries leveraging Haskell's strengths exist, and for new\nprojects I'd recommend those. But for interfacing with existing protocols\nusing ENet, this package should be quite useful.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bitset" or (buildDepError "bitset"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."typesafe-endian" or (buildDepError "typesafe-endian"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }