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
        name = "givegif";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pascal Hartig <phartig@rdrei.net>";
      author = "Pascal Hartig";
      homepage = "http://github.com/passy/givegif#readme";
      url = "";
      synopsis = "CLI Giphy search tool with previews in iTerm 2";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.network-uri)
          (hsPkgs.giphy-api)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.containers)
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "givegif" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.network-uri)
            (hsPkgs.givegif)
            (hsPkgs.giphy-api)
            (hsPkgs.optparse-applicative)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.wreq)
            (hsPkgs.transformers)
            (hsPkgs.errors)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.network-uri)
            (hsPkgs.givegif)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }