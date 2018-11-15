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
        name = "stripe-tests";
        version = "2.4.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson, Jeremy Shaw";
      homepage = "https://github.com/dmjio/stripe-haskell";
      url = "";
      synopsis = "Tests for Stripe API bindings for Haskell";
      description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[100+ Hspec Tests]\nThis cabal package contains all the Stripe Hspec tests in an HTTP backend agnostic format.\nTo run these tests you will need to install a package such as `stripe-http-streams`.\nThis allows each backend to run the full testsuite.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.hspec)
          (hsPkgs.hspec-core)
          (hsPkgs.stripe-core)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }