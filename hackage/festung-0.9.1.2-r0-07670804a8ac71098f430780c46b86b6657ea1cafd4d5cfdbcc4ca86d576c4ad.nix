{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "festung"; version = "0.9.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "developer@figo.io";
      author = "figo GmbH";
      homepage = "http://www.figo.io";
      url = "";
      synopsis = "Remote multi-db SQLCipher server";
      description = "festung is a server that provides an HTTP API to execute queries\nagainst encrypted SQLite databases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.argparser)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.sqlcipher)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          ];
        };
      exes = {
        "festung" = {
          depends = [
            (hsPkgs.argparser)
            (hsPkgs.base)
            (hsPkgs.festung)
            (hsPkgs.yesod)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.festung)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.scientific)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.yesod)
            (hsPkgs.yesod-test)
            ];
          };
        };
      };
    }