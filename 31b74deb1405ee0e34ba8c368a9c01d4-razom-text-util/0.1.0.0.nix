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
      specVersion = "1.10";
      identifier = {
        name = "razom-text-util";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/razom-text-util/";
      url = "";
      synopsis = "Common text/parsing tools for Razom language packages.";
      description = "This is a library of utilities for writing code that\nhandles semantic information documents (text files). It is\nmainly intended for collecting common tools used by the\nRazom information language libraries, but can be used by\nany text related package which needs these tools.";
      buildType = "Simple";
    };
    components = {
      "razom-text-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-applicative)
          (hsPkgs.smaoin)
          (hsPkgs.text-position)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.razom-text-util)
            (hsPkgs.regex-applicative)
            (hsPkgs.smaoin)
          ];
        };
      };
    };
  }