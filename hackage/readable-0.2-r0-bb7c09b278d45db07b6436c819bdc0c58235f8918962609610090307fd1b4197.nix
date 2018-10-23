{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "readable";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mightybyte@gmail.com";
      author = "Doug Beardsley";
      homepage = "https://github.com/mightybyte/readable";
      url = "";
      synopsis = "Reading from Text and ByteString";
      description = "Provides a Readable type class for reading data types from ByteString and\nText.";
      buildType = "Simple";
    };
    components = {
      "readable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }