{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      maintainer = false;
      build-examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "playlists-http";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/playlists-http";
      url = "";
      synopsis = "Library to glue together playlists and http-client";
      description = "Simple library for resolving playlists using http-client.";
      buildType = "Simple";
    };
    components = {
      "playlists-http" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.playlists)
          (hsPkgs.text)
        ];
      };
      exes = {
        "example" = {
          depends  = pkgs.lib.optionals (!(!_flags.build-examples)) [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.playlists-http)
            (hsPkgs.text)
          ];
        };
      };
    };
  }