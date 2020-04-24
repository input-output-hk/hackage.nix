{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc1413-types"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Kevin Cotrone";
      maintainer = "kevincotrone@gmail.com";
      author = "Kevin Cotrone";
      homepage = "https://github.com/cotrone/rfc1413-types#readme";
      url = "";
      synopsis = "An rfc1413 parser and response renderer";
      description = "Types and low level operations for rfc1413";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }