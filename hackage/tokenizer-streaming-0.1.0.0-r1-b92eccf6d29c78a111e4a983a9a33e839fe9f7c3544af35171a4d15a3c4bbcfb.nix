{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "tokenizer-streaming"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2019 Enum Cohrs";
      maintainer = "darcs@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "A variant of tokenizer-monad that supports streaming.";
      description = "This monad transformer is a modification of tokenizer-monad\nthat can work on streams of text/string chunks or even on\n(Unicode) bytestring streams. Thus";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."tokenizer-monad" or ((hsPkgs.pkgs-errors).buildDepError "tokenizer-monad"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          ];
        buildable = true;
        };
      };
    }