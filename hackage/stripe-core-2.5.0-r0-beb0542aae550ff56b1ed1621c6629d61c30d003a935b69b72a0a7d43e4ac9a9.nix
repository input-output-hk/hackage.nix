{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stripe-core"; version = "2.5.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson, Jeremy Shaw";
      homepage = "https://github.com/dmjio/stripe-haskell";
      url = "";
      synopsis = "Stripe API for Haskell - Pure Core";
      description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[Pure API Wrapper]\n`stripe-core` provides a complete binding to the Stripe API. `stripe-core` provides pure wrappers around all the Stripe API objects and methods. `stripe-core` is pure and is not tied to any particular HTTP client library. End users will typically install the `stripe-haskell` package which pulls in the `stripe-http-client` library to obtain a complete set of functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }