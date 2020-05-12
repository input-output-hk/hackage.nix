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
      identifier = { name = "soap-tls"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "TLS-enabled SOAP transport (using tls package)";
      description = "TLS-enabled SOAP transport (using tls package)\n\n> main = do\n>     -- Initial one-time preparations.\n>     settings <- makeSettings (Just \"client.crt\") (Just \"client.key\") validateDefault\n>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")\n>\n>     -- the rest is the same as before...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."soap" or (errorHandler.buildDepError "soap"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }