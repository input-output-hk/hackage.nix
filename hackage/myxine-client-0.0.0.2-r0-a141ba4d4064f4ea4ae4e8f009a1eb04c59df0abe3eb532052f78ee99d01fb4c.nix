{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      tests = {
        "myxine-client-test" = {
          depends = [
            (hsPkgs."myxine-client" or ((hsPkgs.pkgs-errors).buildDepError "myxine-client"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }