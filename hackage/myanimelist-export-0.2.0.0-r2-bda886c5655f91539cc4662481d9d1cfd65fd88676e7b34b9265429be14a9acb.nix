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
        name = "myanimelist-export";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Matthew Harm Bekkema";
      maintainer = "mbekkema97@gmail.com";
      author = "Matthew Harm Bekkema";
      homepage = "https://github.com/mat8913/myanimelist-export#readme";
      url = "";
      synopsis = "Export from MyAnimeList";
      description = "Export anime or manga lists from MyAnimeList in XML format.  Uses the web\ninterface, because the malappinfo API exports in a slightly different format\nwhich causes problems on importing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.network-uri)
          (hsPkgs.tagstream-conduit)
          (hsPkgs.text)
        ];
      };
      exes = {
        "myanimelist-export" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.myanimelist-export)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.http-client)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.http-client-tls)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }