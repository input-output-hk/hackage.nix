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
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "hw-json-lens"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "2016 Alexey Raga";
      maintainer = "alexey.raga@gmail.com";
      author = "Alexey Raga";
      homepage = "http://github.com/haskell-works/hw-json-lens#readme";
      url = "";
      synopsis = "Lens for hw-json";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-conduit" or (errorHandler.buildDepError "hw-conduit"))
          (hsPkgs."hw-diagnostics" or (errorHandler.buildDepError "hw-diagnostics"))
          (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
          (hsPkgs."hw-parser" or (errorHandler.buildDepError "hw-parser"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
        buildable = true;
        };
      tests = {
        "hw-json-lens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-conduit" or (errorHandler.buildDepError "hw-conduit"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
            (hsPkgs."hw-json-lens" or (errorHandler.buildDepError "hw-json-lens"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-conduit" or (errorHandler.buildDepError "hw-conduit"))
            (hsPkgs."hw-json-lens" or (errorHandler.buildDepError "hw-json-lens"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }