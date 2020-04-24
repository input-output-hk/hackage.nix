{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "wordpress-auth"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/wordpress-auth#readme";
      url = "";
      synopsis = "Validate Wordpress Cookies & Nonces; Build Wordpress Hashes & Salts";
      description = "This package is used for validating Cookie data & Nonces from Wordpress.\n\nYou may find it useful if you're trying to serve a Haskell application alongside a Wordpress site. By validating the Cookies set by Wordpress, you can access the currently logged-in Wordpress user in Haskell without having to devise a Wordpress-to-Haskell authentication scheme.\n\nIt includes a generalized authentication function, as well as various helpers, validators, & hashers if you'd like to build a custom authentication process.\n\nServant users may want to just use the @servant-auth-wordpress@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cookie" or ((hsPkgs.pkgs-errors).buildDepError "cookie"))
          (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
          (hsPkgs."hs-php-session" or ((hsPkgs.pkgs-errors).buildDepError "hs-php-session"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."uri-encode" or ((hsPkgs.pkgs-errors).buildDepError "uri-encode"))
          ];
        buildable = true;
        };
      };
    }