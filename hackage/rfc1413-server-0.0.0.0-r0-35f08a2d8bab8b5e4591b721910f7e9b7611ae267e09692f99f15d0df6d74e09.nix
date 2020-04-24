{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc1413-server"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Kevin Cotrone";
      maintainer = "kevincotrone@gmail.com";
      author = "Kevin Cotrone";
      homepage = "https://github.com/cotrone/rfc1413-server#readme";
      url = "";
      synopsis = "rfc1413 server";
      description = "Haskell implementation of a user space rfc1413 server";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
          (hsPkgs."rfc1413-types" or ((hsPkgs.pkgs-errors).buildDepError "rfc1413-types"))
          ];
        buildable = true;
        };
      };
    }