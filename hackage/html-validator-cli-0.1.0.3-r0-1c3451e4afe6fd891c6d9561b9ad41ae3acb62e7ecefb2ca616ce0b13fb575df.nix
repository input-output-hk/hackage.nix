{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "html-validator-cli";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Kenzo Yotsuya";
      maintainer = "kyotsuya@iij-ii.co.jp";
      author = "Kezno Yotsuya";
      homepage = "https://github.com/iij-ii/html-validator-cli#readme";
      url = "";
      synopsis = "Command Line Interface for https://validator.w3.org/";
      description = "Please see the README on GitHub at <https://github.com/iij-ii/html-validator-cli#readme>";
      buildType = "Simple";
    };
    components = {
      "html-validator-cli" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.doctest)
          (hsPkgs.filepath)
          (hsPkgs.hspec)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "validatehtml" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.html-validator-cli)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
      tests = {
        "html-validator-cli-doctest" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.html-validator-cli)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
        "html-validator-cli-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.html-validator-cli)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }