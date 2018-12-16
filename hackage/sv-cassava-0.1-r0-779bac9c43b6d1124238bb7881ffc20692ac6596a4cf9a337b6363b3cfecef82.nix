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
        name = "sv-cassava";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@wils.online";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/sv";
      url = "";
      synopsis = "Integration to use sv with cassava's parser";
      description = "This package provides functions allowing you to use cassava's parser\ntogether with sv's decoding. You might prefer this to using sv's own\nparser if speed is a significant concern.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.sv)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.sv)
            (hsPkgs.sv-cassava)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.validation)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }