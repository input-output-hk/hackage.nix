{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quickbooks";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Plow Technologies";
      maintainer = "hackage@stackbuilders.com";
      author = "Stack Builders";
      homepage = "";
      url = "";
      synopsis = "QuickBooks API binding.";
      description = "This package is a binding to the QuickBooks API. The\ndocumentation can be test using the `cabal test doctests`\ncommand. However, the documentation tests are run against\nan Intuit sandbox which you must create.\n\nVisit Intuit's developer site to create an \"app\":\n<https://developer.intuit.com/>\n\nAfter creating an app you can use your \"app token\" and\nconsumer information to aquire credentials here:\n<https://appcenter.intuit.com/Playground/OAuth>\n\nThis package is configure by environment variables. Once\nyou have your credentials please export the following\nenvironment:\n\n* INTUIT_COMPANY_ID (your app's company ID)\n\n* INTUIT_CONSUMER_KEY (your app's consumer key)\n\n* INTUIT_CONSUMER_SECRET (your app's consumer secret)\n\n* INTUIT_TOKEN (the OAuth1.0 Token you created above *used for tests*)\n\n* INTUIT_SECRET (the OAuth1.0 Secret you created above *used for tests*)\n\n* INTUIT_HOSTNAME (which will be\nsandbox-quickbooks.api.intuit.com for development/test\nenvironments. See the developer website for production)\n\nYou can now run verify the documentation using  `cabal test`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.http-client-tls)
          (hsPkgs.interpolate)
          (hsPkgs.text)
          (hsPkgs.fast-logger)
          (hsPkgs.thyme)
          (hsPkgs.old-locale)
          (hsPkgs.email-validate)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }