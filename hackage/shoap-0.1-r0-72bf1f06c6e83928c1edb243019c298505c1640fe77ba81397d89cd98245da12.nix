{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "shoap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "richard.fergie@gmail.com";
      author = "Richard Fergie";
      homepage = "http://richardfergie.com/shoap";
      url = "";
      synopsis = "A very basic SOAP package";
      description = "Wraps a message in SOAP headers and provides a function to POST this message to a URL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          ];
        buildable = true;
        };
      };
    }