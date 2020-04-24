{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "proto-lens"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "judahjacobson+protolens@google.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens";
      url = "";
      synopsis = "A lens-based implementation of protocol buffers in Haskell.";
      description = "The proto-lens library provides to protocol buffers using modern\nHaskell language and library patterns.  Specifically, it provides:\n\n* Composable field accessors via lenses\n\n* Simple field name resolution/overloading via type-level literals\n\n* Type-safe reflection and encoding/decoding of messages via GADTs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }