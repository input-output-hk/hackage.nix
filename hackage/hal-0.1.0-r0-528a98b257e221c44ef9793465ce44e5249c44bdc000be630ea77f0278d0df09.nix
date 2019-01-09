{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hal"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Nike, Inc.";
      maintainer = "nikeoss";
      author = "Nike, Inc.";
      homepage = "https://github.com/Nike-inc/hal#readme";
      url = "";
      synopsis = "Please see the README.md file for this project.";
      description = "A runtime environment for Haskell applications running on AWS Lambda.";
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