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
      identifier = { name = "reflex-backend-socket"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019, Commonwealth Scientific and Industrial Research Organisation";
      maintainer = "dave.laing.80@gmail.com, jack.kelly@data61.csiro.au";
      author = "Dave Laing";
      homepage = "https://github.com/qfpl/reflex-backend-socket/";
      url = "";
      synopsis = "Reflex bindings for TCP sockets";
      description = "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>\n\nreflex-backend-socket provides functions to handle sockets using\nReflex @Event@s. Sending\\/receiving\\/waiting\\/accepting are all\nperformed on background threads.\n\nThe most important function in this library is\n@Reflex.Backend.Socket.socket@, which wraps a @Socket@ to process\n@Event t ByteString@s.\n\nThat @Socket@ can come from:\n\n1. @Reflex.Backend.Socket.Accept.accept@, if you're making a server;\n2. @Reflex.Backend.Socket.Connect.connect@, if you're making a client; or\n3. Your favourite networking library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."semialign" or (buildDepError "semialign"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."these" or (buildDepError "these"))
          ];
        buildable = true;
        };
      exes = {
        "example-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or (buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or (buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "example-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or (buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or (buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "example-others" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or (buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or (buildDepError "reflex-basic-host"))
            (hsPkgs."witherable" or (buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }