{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stripe-signature"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/stripe";
      url = "";
      synopsis = "Verification of Stripe webhook signatures";
      description = "When <https://stripe.com/ Stripe> sends an event to your webhook, it\nincludes an HTTP header named @Stripe-Signature@. You should use this\nto verify the authenticity of the request to ensure that you are not\nacting upon forged events originating from some source other than\nStripe.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.stripe-concepts)
          (hsPkgs.text)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.stripe-signature)
            (hsPkgs.text)
            ];
          };
        };
      };
    }