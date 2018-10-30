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
      specVersion = "1.6";
      identifier = {
        name = "base64-bytestring";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/base64-bytestring";
      url = "";
      synopsis = "Fast base64 encoding and deconding for ByteStrings";
      description = "Fast base64 encoding and deconding for ByteStrings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }