{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "happstack-fay"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using Fay with Happstack";
      description = "Fay is strict subset of Happstack which can be compiled\nto Javascript. This library provides some utilities for client-server\ncommunication, client-side HTML generation, and more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fay" or ((hsPkgs.pkgs-errors).buildDepError "fay"))
          (hsPkgs."fay-jquery" or ((hsPkgs.pkgs-errors).buildDepError "fay-jquery"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          ];
        buildable = true;
        };
      };
    }