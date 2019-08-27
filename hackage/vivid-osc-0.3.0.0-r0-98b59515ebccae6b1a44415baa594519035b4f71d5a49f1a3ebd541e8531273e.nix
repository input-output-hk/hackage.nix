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
      identifier = { name = "vivid-osc"; version = "0.3.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Open Sound Control encode/decode";
      description = "A small, simple, and well-tested implementation of the Open Sound Control\nmessage format.\n\nExample usage:\n\n@\n&#123;&#45;\\# LANGUAGE OverloadedStrings \\#&#45;&#125;\n@\n\n> import Network.Socket\n> import Network.Socket.ByteString as SB\n>\n> import Vivid.OSC\n>\n> main = do\n>    -- Boring Network.Socket setup:\n>    (a:_) <- getAddrInfo Nothing (Just \"127.0.0.1\") (Just \"57120\")\n>    s <- socket (addrFamily a) Datagram defaultProtocol\n>    connect s (addrAddress a)\n>\n>    -- The interesting part:\n>    SB.send s \$ encodeOSC \$\n>       OSC \"/play2\" [OSC_S \"cps\", OSC_I 1, OSC_S \"s\", OSC_S \"bd\"]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      tests = {
        "vivid-osc-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vivid-osc" or (buildDepError "vivid-osc"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."microspec" or (buildDepError "microspec"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }