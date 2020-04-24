{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apioiaf-client"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Karl Berger";
      maintainer = "krab.berger@gmail.com";
      author = "Karl Berger";
      homepage = "https://github.com/kberger/anapioficeandfire-haskell#readme";
      url = "";
      synopsis = "Consumer library for anapioficeandfire.com";
      description = "\nA wrapper library for consuming the data provided by <anapioficeandfire.com>\n\nSee README for API details <https://github.com/kberger/anapioficeandfire-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "apioiaf-client-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."apioiaf-client" or ((hsPkgs.pkgs-errors).buildDepError "apioiaf-client"))
            ];
          buildable = true;
          };
        };
      };
    }