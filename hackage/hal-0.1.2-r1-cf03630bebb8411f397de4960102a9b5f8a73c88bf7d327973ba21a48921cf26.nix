{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hal"; version = "0.1.2"; };
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.envy)
          (hsPkgs.exceptions)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }