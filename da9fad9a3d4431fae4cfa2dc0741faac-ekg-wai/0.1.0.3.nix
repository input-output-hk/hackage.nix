{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ekg-wai";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz, Johan Tibell";
      homepage = "https://github.com/tvh/ekg-wai";
      url = "";
      synopsis = "Remote monitoring of processes";
      description = "This library lets you remotely monitor a running process over HTTP.\nIt provides a simple way to integrate a monitoring server into any\napplication.\nThis is a port of the ekg library to depend on wai instead of snap.";
      buildType = "Simple";
    };
    components = {
      "ekg-wai" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ekg-core)
          (hsPkgs.ekg-json)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.warp)
        ];
      };
    };
  }