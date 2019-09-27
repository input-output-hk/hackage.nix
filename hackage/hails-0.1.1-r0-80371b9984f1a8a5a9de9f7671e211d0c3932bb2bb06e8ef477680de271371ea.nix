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
      identifier = { name = "hails"; version = "0.1.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "IFC enforcing web platform framework";
      description = "Hails is a framework for building multi-app web platforms.\nThis module exports a library for building Hails platforms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lio" or (buildDepError "lio"))
          (hsPkgs."iterIO" or (buildDepError "iterIO"))
          (hsPkgs."iterio-server" or (buildDepError "iterio-server"))
          (hsPkgs."dclabel" or (buildDepError "dclabel"))
          (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."bson" or (buildDepError "bson"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."compact-string-fix" or (buildDepError "compact-string-fix"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."SimpleAES" or (buildDepError "SimpleAES"))
          (hsPkgs."RSA" or (buildDepError "RSA"))
          ];
        buildable = true;
        };
      };
    }