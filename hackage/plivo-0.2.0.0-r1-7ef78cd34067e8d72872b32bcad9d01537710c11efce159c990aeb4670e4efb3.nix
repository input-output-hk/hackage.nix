{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "plivo"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/plivo-haskell";
      url = "";
      synopsis = "Plivo API wrapper for Haskell";
      description = "This package provides types representing requests to Plivo API endpoints\nand a function that calls the endpoints correctly, given the request.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network-uri)
          (hsPkgs.http-types)
          (hsPkgs.http-streams)
          (hsPkgs.io-streams)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.errors)
          (hsPkgs.unexceptionalio)
          ];
        };
      };
    }