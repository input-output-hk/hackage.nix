{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { bmi2 = false; sse42 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-json"; version = "1.3.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2025 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-json#readme";
      url = "";
      synopsis = "Memory efficient JSON parser";
      description = "Memory efficient JSON parser. Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-aeson" or (errorHandler.buildDepError "attoparsec-aeson"))
          (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-json-simple-cursor" or (errorHandler.buildDepError "hw-json-simple-cursor"))
          (hsPkgs."hw-json-standard-cursor" or (errorHandler.buildDepError "hw-json-standard-cursor"))
          (hsPkgs."hw-mquery" or (errorHandler.buildDepError "hw-mquery"))
          (hsPkgs."hw-parser" or (errorHandler.buildDepError "hw-parser"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
        ] ++ pkgs.lib.optional (system.isX86_64) (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"));
        buildable = true;
      };
      sublibs = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
            (hsPkgs."hw-json-standard-cursor" or (errorHandler.buildDepError "hw-json-standard-cursor"))
            (hsPkgs."hw-mquery" or (errorHandler.buildDepError "hw-mquery"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          ];
          buildable = true;
        };
      };
      exes = {
        "hw-json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
            (hsPkgs."hw-json-simple-cursor" or (errorHandler.buildDepError "hw-json-simple-cursor"))
            (hsPkgs."hw-json-standard-cursor" or (errorHandler.buildDepError "hw-json-standard-cursor"))
            (hsPkgs."hw-mquery" or (errorHandler.buildDepError "hw-mquery"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optional (system.isX86_64) (hsPkgs."hw-json-simd" or (errorHandler.buildDepError "hw-json-simd"));
          buildable = true;
        };
      };
      tests = {
        "hw-json-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-aeson" or (errorHandler.buildDepError "attoparsec-aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
            (hsPkgs."hw-json-simple-cursor" or (errorHandler.buildDepError "hw-json-simple-cursor"))
            (hsPkgs."hw-json-standard-cursor" or (errorHandler.buildDepError "hw-json-standard-cursor"))
            (hsPkgs."hw-mquery" or (errorHandler.buildDepError "hw-mquery"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest-discover.components.exes.doctest-discover or (pkgs.pkgsBuildBuild.doctest-discover or (errorHandler.buildToolDepError "doctest-discover:doctest-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
            (hsPkgs."hw-json-standard-cursor" or (errorHandler.buildDepError "hw-json-standard-cursor"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          ];
          buildable = true;
        };
      };
    };
  }