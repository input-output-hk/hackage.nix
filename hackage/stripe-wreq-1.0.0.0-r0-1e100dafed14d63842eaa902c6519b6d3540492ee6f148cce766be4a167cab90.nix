{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stripe-wreq"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/stripe";
      url = "";
      synopsis = "Use the Stripe API via Wreq";
      description = "This package helps you make requests to the\n<https://stripe.com/ Stripe> API in conjunction with\nthe <https://hackage.haskell.org/package/wreq wreq> package.\nThis is a minimal library that makes no attempt obscure\neither its underpinnings in Wreq or any of the details of the\nStripe API. Responses are returned as\n<https://hackage.haskell.org/package/aeson aeson> values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.stripe-concepts)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.wreq)
          ];
        };
      };
    }