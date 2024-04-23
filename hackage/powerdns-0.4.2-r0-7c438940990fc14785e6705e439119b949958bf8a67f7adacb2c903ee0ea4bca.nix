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
      specVersion = "3.0";
      identifier = { name = "powerdns"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Victor Nawothnig";
      maintainer = "Victor Nawothnig (dminuoso@icloud.com)";
      author = "Victor Nawothnig, Julian Jacobi";
      homepage = "";
      url = "";
      synopsis = "PowerDNS API bindings for api/v1";
      description = "PowerDNS API allows programmatic manipulation of zones and other metadata. This\nlibrary is a thin wrapper, exposing most of the idiosyncracies directly.\n\nUsers are advised to refer to the PowerDNS documentation and its source code for\nthe exact semantics.\n\nAll exposed API endpoints are provided.\n\n> import qualified PowerDNS.Client as P\n> import           Network.HTTP.Client (newManager, defaultManagerSettings)\n> import           Servant.Client (runClientM, mkClientEnv, parseBarseUrl)\n>\n> main :: IO\n> main = do\n>   uri <- parseBaseUrl \"http://localhost:8081\"\n>   mgr <- newManager defaultManagerSettings\n>   let env = P.applyXApiKey \"secret\" (mkClientEnv mgr uri)\n>\n>   Right r <- runClientM (P.statistics \"localhost\" Nothing Nothing) env)\n>   traverse_ print r";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
        ];
        buildable = true;
      };
      tests = {
        "powerdns-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
            (hsPkgs."powerdns" or (errorHandler.buildDepError "powerdns"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ];
          buildable = true;
        };
      };
    };
  }