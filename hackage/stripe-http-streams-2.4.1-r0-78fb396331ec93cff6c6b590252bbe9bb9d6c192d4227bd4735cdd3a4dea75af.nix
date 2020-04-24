{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stripe-http-streams"; version = "2.4.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "Stripe API for Haskell - http-streams backend";
      description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[Access Stripe API using http-streams]\nThis package provides access to the Stripe API using `stripe-core` and `http-streams`. See also the `stripe` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."stripe-core" or ((hsPkgs.pkgs-errors).buildDepError "stripe-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."stripe-core" or ((hsPkgs.pkgs-errors).buildDepError "stripe-core"))
            (hsPkgs."stripe-http-streams" or ((hsPkgs.pkgs-errors).buildDepError "stripe-http-streams"))
            (hsPkgs."stripe-tests" or ((hsPkgs.pkgs-errors).buildDepError "stripe-tests"))
            ];
          buildable = true;
          };
        };
      };
    }