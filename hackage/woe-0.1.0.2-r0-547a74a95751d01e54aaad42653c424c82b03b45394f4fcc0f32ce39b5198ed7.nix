{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "woe"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "n/a";
      author = "Riuga";
      homepage = "";
      url = "";
      synopsis = "Convenient typeclass for defining arbitrary-index enums.";
      description = "Convenient typeclass for defining arbitrary-index enums, which allow for safe derivation of Enum using DerivingVia.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }