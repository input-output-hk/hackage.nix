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
      specVersion = "1.10";
      identifier = { name = "servant-snap"; version = "0.7.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com imalsogreg@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni, Greg Hale";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "Interpret a Servant API as a Snap server, using any Snaplets you like.\n\nYou can learn about the basics of servant in the Servant <https://haskell-servant.readthedocs.io tutorial>, and about the basics of Snap at the Snaplets <http://snapframework.com/docs/tutorials/snaplets-tutorial tutorial>\n\n<https://github.com/haskell-servant/servant-snap/blob/master/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package. One route delegates to the <https://hackage.haskell.org/package/snap/docs/Snap-Snaplet-Auth.html Auth> snaplet, another delegates to <https://hackage.haskell.org/package/snap/docs/Snap-Snaplet-Heist.html Heist>.\n\n<https://github.com/haskell-servant/servant-snap/blob/master/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "snap-greet" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-snap" or (errorHandler.buildDepError "servant-snap"))
            (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec-snap" or (errorHandler.buildDepError "hspec-snap"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-snap" or (errorHandler.buildDepError "servant-snap"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }