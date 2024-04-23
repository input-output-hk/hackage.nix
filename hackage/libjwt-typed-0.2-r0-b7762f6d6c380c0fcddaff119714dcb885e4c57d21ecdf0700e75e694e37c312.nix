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
      specVersion = "2.4";
      identifier = { name = "libjwt-typed"; version = "0.2"; };
      license = "MPL-2.0";
      copyright = "2020 Marcin Rzeźnicki";
      maintainer = "Marcin Rzeźnicki <marcin.rzeznicki@gmail.com>";
      author = "Marcin Rzeźnicki";
      homepage = "https://github.com/marcin-rzeznicki/libjwt-typed";
      url = "";
      synopsis = "A Haskell implementation of JSON Web Token (JWT)";
      description = "A Haskell implementation of JSON Web Token (JWT)\n\n= Key features\n\n== Type-safety\n\nAbove Haskell standard type-safety, the library keeps track of public and private claim names and types. There are no user-facing @HashMap@s in this library!\nA type of a JWT token might be: @Jwt '[\"user_name\" ->> Text, \"is_root\" ->> Bool, \"user_id\" ->> UUID, \"created\" ->> UTCTime, \"accounts\" ->> NonEmpty (UUID, Text)] ('SomeNs \"https://example.com\")@.\nFrom information encoded with precise types, it automatically derives encoders and decoders. It can also work with generic representations such as records.\n\n== Speed and robustness\n\n@libjwt-typed@ uses [libjwt](https://github.com/benmcollins/libjwt) for low-level functionality. @libjwt@ delegates cryptographic work to either @GnuTLS@ or @OpenSSL@.\nThis way, not only the most performance-sensitive features work lightning fast, they are also extremely reliable.\nBesides, the library does not depend on any JSON library like @aeson@, but it implements the necessary JSON processing in C via [jsmn](https://github.com/zserge/jsmn) - which makes it even faster. Benchmarking shows that it can be over 10 times faster than other Haskell JWT libraries.\n\n== Ease of use\n\nThe library is designed for frictionless use.\nIt can be easily extended, e.g. to add support for new types or to use custom JSON encodings compatible with other libraries you may already use in your project. Most instances can be derived automatically.\nThe compilation errors are designed to be informational, i.e. you get @Claim \"user_name\" does not exist in this claim set@ from GHC, not some 3 page long instance resolution output.\n\n= Installation\n\nYou must have [libjwt](https://github.com/benmcollins/libjwt) (preferrably the latest version) installed on your system and visible to the linker.\n\n@libjwt-typed@ links to it at compile time.\nYou can configure @libjwt@ with @GnuTLS@ or @OpenSSL@\n\nPlease see the full [README](https://github.com/marcin-rzeznicki/libjwt-typed) or browse the docs for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."proxied" or (errorHandler.buildDepError "proxied"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
        ];
        libs = [ (pkgs."jwt" or (errorHandler.sysDepError "jwt")) ];
        buildable = true;
      };
      tests = {
        "libjwt-typed-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."libjwt-typed" or (errorHandler.buildDepError "libjwt-typed"))
            (hsPkgs."jwt" or (errorHandler.buildDepError "jwt"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "libjwt-typed-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."libjwt-typed" or (errorHandler.buildDepError "libjwt-typed"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."jose" or (errorHandler.buildDepError "jose"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }