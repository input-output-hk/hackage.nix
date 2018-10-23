{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sendgrid-haskell";
        version = "1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "owain@owainlewis.com";
      author = "Owain Lewis";
      homepage = "https://owainlewis.com";
      url = "";
      synopsis = "Sengrid API";
      description = "A Haskell SendGrid API client";
      buildType = "Simple";
    };
    components = {
      "sendgrid-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
        ];
      };
    };
  }