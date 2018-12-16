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
        name = "stripe-http-client";
        version = "2.4.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2018 Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "Stripe API for Haskell - http-client backend";
      description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[Access Stripe API using http-client]\nThis package provides access to the Stripe API using `stripe-core`\nand `http-client`. See also the `stripe` package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.stripe-core)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.free)
            (hsPkgs.hspec)
            (hsPkgs.stripe-core)
            (hsPkgs.stripe-tests)
            (hsPkgs.http-client)
            (hsPkgs.stripe-http-client)
          ];
        };
      };
    };
  }