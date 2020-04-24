{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mDNSResponder-client"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Obsidian Systems LLC";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/obsidiansystems/mDNSResponder-client";
      url = "";
      synopsis = "Library for talking to the mDNSResponder daemon.";
      description = "On OS X, iOS, and Bonjour for Windows, mDNSResponder is\nthe daemon responsible for providing the Bonjour services.\nThis is a client implementation directly on top of the\n(not documented outside of the open source code) Unix\ndomain socket protocol, as the \"low level\" dns_sd C API\nprovided by Apple relies on heavy use of callbacks and\ndoes not allow for nonblocking connections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network-msg" or ((hsPkgs.pkgs-errors).buildDepError "network-msg"))
          (hsPkgs."ctrie" or ((hsPkgs.pkgs-errors).buildDepError "ctrie"))
          (hsPkgs."data-endian" or ((hsPkgs.pkgs-errors).buildDepError "data-endian"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."mDNSResponder-client" or ((hsPkgs.pkgs-errors).buildDepError "mDNSResponder-client"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }