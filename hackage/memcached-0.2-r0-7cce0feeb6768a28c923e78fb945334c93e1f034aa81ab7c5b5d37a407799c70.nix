{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "memcached"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Janrain <hackage@janrain.com>";
      author = "Evan Martin <martine@danga.com>";
      homepage = "http://github.com/olegkat/haskell-memcached";
      url = "";
      synopsis = "haskell bindings for memcached";
      description = "haskell bindings for memcached";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-light" or ((hsPkgs.pkgs-errors).buildDepError "utf8-light"))
          ];
        buildable = true;
        };
      };
    }