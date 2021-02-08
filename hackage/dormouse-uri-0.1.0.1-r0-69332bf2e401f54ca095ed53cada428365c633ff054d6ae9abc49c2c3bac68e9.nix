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
      specVersion = "1.18";
      identifier = { name = "dormouse-uri"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020-2021 Phil Curzon";
      maintainer = "phil@novelfs.org";
      author = "Phil Curzon";
      homepage = "https://dormouse.io/uri.html";
      url = "";
      synopsis = "Library for type-safe representations of Uri/Urls";
      description = "Dormouse-Uri provides type safe handling of `Uri`s and `Url`s.\n\n`Uri` sytax is well defined according to [RFC 3986](https://tools.ietf.org/html/rfc3986), Dormouse-Uri parses and encodes `Uri`s according to the syntax defined in this document.\n\nWe define `Url` as an absolute URI associated with web resources, the current version of Dormouse-Uri restricts `Url`s to the `http` and `https` schemes.\n\nDormouse-Uri has the following features:\n\n- The `Uri` and `Url` data types use `Data.Text` internally, this allows you to freely include percent-decoded characters which will be properly rendered when the `Url`/`Uri` is encoded.\n- Quasiquoters to allow safe construction of `Uri`/`Url`s from string literals.\n- `DataKinds` allow `Url`s to be restricted to the `http` or `https` schemes are the type level.\n- A UrlBuilder syntax to allow type-safe construction/concatenation of `Url`s from their components, e.g. path and query parameters.\n\nPlease see https://dormouse.io for full documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "dormouse-uri-test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }