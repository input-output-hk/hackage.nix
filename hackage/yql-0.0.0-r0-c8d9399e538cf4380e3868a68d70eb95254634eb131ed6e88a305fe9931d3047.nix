{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yql"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "fabian.bergmark@gmail.com";
      author = "Fabian Bergmark";
      homepage = "https://github.com/fabianbergmark/YQL";
      url = "";
      synopsis = "A YQL engine to execute Open Data Tables";
      description = "A YQL engine that provides a Haskell backbone\nlibrary for the YQL specification, and a Javascript\nhost environment to execute Open Data Tables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
          (hsPkgs.ecma262)
          (hsPkgs.exceptions)
          (hsPkgs.hslogger)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.opendatatable)
          (hsPkgs.parsec)
          (hsPkgs.SHA)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-template)
          (hsPkgs.utf8-string)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          ];
        };
      exes = {
        "yql" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yql)
            (hsPkgs.containers)
            (hsPkgs.ecma262)
            (hsPkgs.exceptions)
            (hsPkgs.opendatatable)
            (hsPkgs.hxt)
            ];
          };
        };
      };
    }