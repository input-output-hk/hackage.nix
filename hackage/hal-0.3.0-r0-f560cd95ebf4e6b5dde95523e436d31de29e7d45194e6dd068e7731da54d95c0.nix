{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hal"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Nike, Inc.";
      maintainer = "nikeoss";
      author = "Nike, Inc.";
      homepage = "https://github.com/Nike-inc/hal#readme";
      url = "";
      synopsis = "A runtime environment for Haskell applications running on AWS Lambda.";
      description = "This library uniquely supports different types of AWS Lambda Handlers for your\nneeds/comfort with advanced Haskell. Instead of exposing a single function\nthat constructs a Lambda, this library exposes many.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }