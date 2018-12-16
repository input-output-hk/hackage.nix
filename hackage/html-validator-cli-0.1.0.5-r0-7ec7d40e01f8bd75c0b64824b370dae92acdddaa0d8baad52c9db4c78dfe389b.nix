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
        name = "html-validator-cli";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "IIJ Innovation Institute Inc.";
      maintainer = "kyotsuya@iij-ii.co.jp";
      author = "Kenzo Yotsuya";
      homepage = "https://github.com/iij-ii/html-validator-cli#readme";
      url = "";
      synopsis = "A command-line interface for https://validator.w3.org/";
      description = "Please see the README on GitHub at <https://github.com/iij-ii/html-validator-cli#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          depends = [
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
          depends = [
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
          depends = [
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