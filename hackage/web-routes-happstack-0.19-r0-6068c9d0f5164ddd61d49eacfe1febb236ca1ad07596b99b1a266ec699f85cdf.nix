{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "web-routes-happstack"; version = "0.19"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Adds support for using web-routes with Happstack";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
          ];
        buildable = true;
        };
      };
    }