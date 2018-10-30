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
        name = "regex-pcre-text";
        version = "0.94.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006-2017, Chris Dornan and Christopher Kuklewicz";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan and Christopher Kuklewicz";
      homepage = "https://github.com/cdornan/regex-pcre-text";
      url = "";
      synopsis = "Text-based PCRE API for regex-base";
      description = "The PCRE/Text backend to accompany regex-base;\nneeds regex-pcre and regex-tdfa-text";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.text)
        ];
      };
    };
  }