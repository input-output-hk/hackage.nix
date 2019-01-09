{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "base16-bytestring"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://github.com/mailrank/base16-bytestring";
      url = "";
      synopsis = "Fast base16 (hex) encoding and deconding for ByteStrings";
      description = "Fast base16 (hex) encoding and deconding for ByteStrings";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      };
    }