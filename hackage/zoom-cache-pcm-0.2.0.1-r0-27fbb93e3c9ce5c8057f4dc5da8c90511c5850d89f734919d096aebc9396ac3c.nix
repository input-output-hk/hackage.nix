{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "zoom-cache-pcm"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "Library for zoom-cache PCM audio codecs";
      description = "zoom-cache-pcm is a fairly simple data file format for storing and summarizing\nstreams of PCM audio. See the zoom-cache package for general information about\nzoom-cache files.\n\nThis library provides codecs for use with the zoom-cache package, allowing you\nto build applications which read and write zoom-cache-pcm files. Tools for\nencoding and dumping zoom-cache-pcm files are in the package zoom-cache-sndfile.\n\nWhen developing applications that read or write zoom-cache-pcm files, it should\nbe sufficient to import only the module \"Data.ZoomCache.PCM\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."zoom-cache" or ((hsPkgs.pkgs-errors).buildDepError "zoom-cache"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }