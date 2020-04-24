{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nicify"; version = "1.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "";
      url = "";
      synopsis = "Pretty print the standard output of default `Show` instances.";
      description = "Pretty print the standard output of `show` for algebraic datatypes";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nicify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nicify-lib" or ((hsPkgs.pkgs-errors).buildDepError "nicify-lib"))
            ];
          buildable = true;
          };
        };
      };
    }