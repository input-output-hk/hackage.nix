{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stripe-http-client"; version = "2.5.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."stripe-core" or ((hsPkgs.pkgs-errors).buildDepError "stripe-core"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."stripe-core" or ((hsPkgs.pkgs-errors).buildDepError "stripe-core"))
            (hsPkgs."stripe-tests" or ((hsPkgs.pkgs-errors).buildDepError "stripe-tests"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."stripe-http-client" or ((hsPkgs.pkgs-errors).buildDepError "stripe-http-client"))
            ];
          buildable = true;
          };
        };
      };
    }