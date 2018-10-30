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
        name = "pi-hoole";
        version = "0.2.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "2018 Thomas Letan";
      maintainer = "lthms <contact@thomasletan.fr>";
      author = "Thomas Letan";
      homepage = "";
      url = "";
      synopsis = "Lightweight access control solution for the pijul vcs";
      description = "Please see the introductory post at <https://lthms.xyz/blog/pi-hoole>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      exes = {
        "pi-hoole-cfg" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-generic)
            (hsPkgs.pi-hoole)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.yaml)
          ];
        };
        "pi-hoole-shell" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.pi-hoole)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
        "pi-hoole-web" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base58-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.pi-hoole)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            (hsPkgs.shakespeare)
            (hsPkgs.blaze-html)
          ];
        };
      };
      tests = {
        "pi-hoole-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pi-hoole)
          ];
        };
      };
    };
  }