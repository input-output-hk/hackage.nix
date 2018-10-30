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
      specVersion = "1.14.0";
      identifier = {
        name = "wai-cors";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud Systems, Inc.";
      maintainer = "lars@alephcloud.com";
      author = "Lars Kuhtz";
      homepage = "https://github.com/alephcloud/wai-cors";
      url = "";
      synopsis = "CORS for WAI";
      description = "This package provides an implemenation of\nCross-Origin resource sharing (CORS) for Wai that aims to be\ncompliant with <http://www.w3.org/TR/cors>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.charset)
          (hsPkgs.errors)
          (hsPkgs.http-types)
          (hsPkgs.parsers)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
    };
  }