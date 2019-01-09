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
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cookie)
          (hsPkgs.cryptohash-md5)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.hs-php-session)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uri-encode)
          ];
        };
      };
    }