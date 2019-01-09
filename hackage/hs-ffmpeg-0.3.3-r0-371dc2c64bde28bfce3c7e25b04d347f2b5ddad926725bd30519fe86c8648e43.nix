{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hs-ffmpeg"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Vasyl Pasternak";
      maintainer = "vasylpasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "http://patch-tag.com/r/VasylPasternak/hs-ffmpeg";
      url = "";
      synopsis = "Bindings to FFMPEG library";
      description = "Bindings to FFMPEG library";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.haskell98) (hsPkgs.bytestring) ];
        };
      };
    }