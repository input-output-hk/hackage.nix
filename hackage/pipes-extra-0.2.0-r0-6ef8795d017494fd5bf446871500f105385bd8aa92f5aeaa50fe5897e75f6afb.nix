{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "pipes-extra"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "https://github.com/pcapriotti/pipes-extra";
      url = "";
      synopsis = "Various basic utilities for Pipes.";
      description = "This module contains basic utilities for Pipes to deal with files and chunked binary data, as well as extra combinators like 'zip' and 'tee'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "telnet" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."pipes-extra" or ((hsPkgs.pkgs-errors).buildDepError "pipes-extra"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = if flags.examples then true else false;
          };
        "compress" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."pipes-extra" or ((hsPkgs.pkgs-errors).buildDepError "pipes-extra"))
            (hsPkgs."pipes-zlib" or ((hsPkgs.pkgs-errors).buildDepError "pipes-zlib"))
            ];
          buildable = if flags.examples then true else false;
          };
        "decompress" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."pipes-extra" or ((hsPkgs.pkgs-errors).buildDepError "pipes-extra"))
            (hsPkgs."pipes-zlib" or ((hsPkgs.pkgs-errors).buildDepError "pipes-zlib"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th-prime" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th-prime"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."pipes-extra" or ((hsPkgs.pkgs-errors).buildDepError "pipes-extra"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-general" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "bench-simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "bench-zlib" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
            (hsPkgs."pipes-zlib" or ((hsPkgs.pkgs-errors).buildDepError "pipes-zlib"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
            (hsPkgs."zlib-enum" or ((hsPkgs.pkgs-errors).buildDepError "zlib-enum"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."zlib-conduit" or ((hsPkgs.pkgs-errors).buildDepError "zlib-conduit"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }