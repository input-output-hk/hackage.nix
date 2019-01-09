{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stripe-scotty"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/stripe";
      url = "";
      synopsis = "Listen for Stripe webhook events with Scotty";
      description = "This package provides support for writing a\n<https://stripe.com/ Stripe> webhook server using Scotty.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.scotty)
          (hsPkgs.stripe-concepts)
          (hsPkgs.stripe-signature)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }