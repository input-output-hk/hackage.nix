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
        name = "servant-pushbullet-client";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "Jacob Thomas Errington, 2017";
      maintainer = "git@mail.jerrington.me";
      author = "Jacob Errington";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Pushbullet API using servant-client";
      description = "This library describes the Pushbullet API as a type, and uses servant-client\nto generate Haskell functions for accessing the API. A number of useful types\nare added so that dealing with raw JSON is avoided.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-client)
          (hsPkgs.scientific)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }