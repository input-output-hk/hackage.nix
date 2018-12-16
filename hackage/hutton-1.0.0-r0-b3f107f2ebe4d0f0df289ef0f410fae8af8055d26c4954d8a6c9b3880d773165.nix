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
      specVersion = "1.8";
      identifier = {
        name = "hutton";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A program for the button on Reddit.";
      description = "Hutton is a program for <https://www.reddit.com/r/thebutton the button> on\nReddit.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hutton" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.flow)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.rainbow)
            (hsPkgs.regex-compat)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.websockets)
            (hsPkgs.wuss)
          ];
        };
      };
    };
  }