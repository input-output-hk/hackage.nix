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
      specVersion = "2.4";
      identifier = { name = "myxine-client"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2020 Galois, Inc.";
      maintainer = "kwf@galois.com";
      author = "Kenny Foner";
      homepage = "https://github.com/GaloisInc/myxine";
      url = "";
      synopsis = "A Haskell client for the Myxine GUI server";
      description = "[Myxine](https://github.com/GaloisInc/myxine) is a language-agnostic local\nserver that lets you build interactive applications in the browser using a\nRESTful API. This package defines high-level typed Haskell bindings for using\nMyxine to quickly prototype surprisingly high-performance GUIs.\n\nMyxine itself runs as a local server, separately from these bindings. It is\nbuilt in [Rust](https://www.rust-lang.org/learn/get-started), and can be\ninstalled using the standard Rust build tool @cargo@:\n\n> \$ cargo install myxine\n\nThis Haskell package does __not__ manage the @myxine@ server process; it\nassumes that it is already running in the background (either started by an\nend-user, or managed by your own Haskell application).\n\n__Required extensions:__ This library relies on the @OverloadedRecordFields@\nlanguage extension, since a variety of browser event interfaces share field\nnames/types. Without enabling it, you'll see many bewildering errors about\nambiguous names. You may also find useful for concision the extensions\n@NamedFieldPuns@ and @RecordWildCards@.\n\n__Package versioning and stability:__ This package should be considered in\n\"alpha\" stability at present. No compatibility between alpha versions is\nguaranteed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."req" or (buildDepError "req"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        buildable = true;
        };
      tests = {
        "myxine-client-test" = {
          depends = [
            (hsPkgs."myxine-client" or (buildDepError "myxine-client"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }