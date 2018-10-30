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
        name = "language-kort";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/language-kort/";
      url = "";
      synopsis = "Parser and serializer for the Kort information language.";
      description = "This package provides a library containing all the\nnecessary tools for working with Kort files, allowing\nprograms to load and save semantic data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.razom-text-util)
          (hsPkgs.regex-applicative)
          (hsPkgs.smaoin)
          (hsPkgs.text)
          (hsPkgs.text-position)
          (hsPkgs.vocabulary-kadma)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.language-kort)
            (hsPkgs.smaoin)
            (hsPkgs.text)
            (hsPkgs.vocabulary-kadma)
          ];
        };
      };
    };
  }