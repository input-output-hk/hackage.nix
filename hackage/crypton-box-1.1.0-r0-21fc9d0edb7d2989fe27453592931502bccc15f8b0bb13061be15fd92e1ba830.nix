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
      specVersion = "1.12";
      identifier = { name = "crypton-box"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Yuto Takano";
      maintainer = "moa17stock@gmail.com";
      author = "Yuto Takano";
      homepage = "https://github.com/yutotakano/crypton-box#readme";
      url = "";
      synopsis = "NaCl crypto/secret box implementations based on crypton primitives.";
      description = "This library provides a high-level API for authenticated encryption and\ndecryption using the NaCl [crypto_box](https://nacl.cr.yp.to/box.html) and\n[crypto_secretbox](https://nacl.cr.yp.to/secretbox.html) constructs.\n\nThe API is implemented in pure Haskell using XSalsa and Poly1305 primitives\nprovided by the [crypton](https://hackage.haskell.org/package/crypton) library.\n\n__Important: This library has not been professionally reviewed. Side__\n__channel attacks and memory-related vulnerabilities may exist! Use at your__\n__own risk.__\n\n/(P.S. I would love to hear from you if you can audit this library and/\n/improve its security!)/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
      tests = {
        "crypton-box-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."crypton-box" or (errorHandler.buildDepError "crypton-box"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }