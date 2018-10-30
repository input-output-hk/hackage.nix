{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "medium-sdk-haskell";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "©2015 Timmy Tofu";
      maintainer = "timmytofu@users.noreply.github.com";
      author = "timmy_tofu";
      homepage = "";
      url = "";
      synopsis = "Haskell SDK for communicating with the Medium API";
      description = "Haskell SDK for communicating with the Medium API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.either)
          (hsPkgs.http-client)
          (hsPkgs.servant-client)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }