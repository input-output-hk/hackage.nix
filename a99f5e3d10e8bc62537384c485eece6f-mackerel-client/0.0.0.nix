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
        name = "mackerel-client";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "itchyny <https://github.com/itchyny>";
      author = "itchyny";
      homepage = "";
      url = "";
      synopsis = "An API client library for Mackerel (https://mackerel.io)";
      description = "This library provides bindings to Mackerel APIs.\n\nThe official site of Mackerel: https://mackerel.io/.\nThe reference of Mackerel API: https://mackerel.io/api-docs/.";
      buildType = "Simple";
    };
    components = {
      "mackerel-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.aeson)
          (hsPkgs.htoml)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.data-default)
          (hsPkgs.split)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mackerel-client)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.unordered-containers)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }