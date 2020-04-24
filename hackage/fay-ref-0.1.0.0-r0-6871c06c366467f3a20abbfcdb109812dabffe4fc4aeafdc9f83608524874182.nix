{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fay-ref"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Andrew Miller";
      maintainer = "Andrew Miller <andrew@amxl.com>";
      author = "Andrew Miller";
      homepage = "https://github.com/A1kmm/fay-ref";
      url = "";
      synopsis = "Like IORef but for Fay.";
      description = "Like IORef but for Fay.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fay-base" or ((hsPkgs.pkgs-errors).buildDepError "fay-base"))
          ];
        buildable = true;
        };
      };
    }