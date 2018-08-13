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
      specVersion = "1.8";
      identifier = {
        name = "alsa-core";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (Exceptions).";
      description = "This package provides access to ALSA infrastructure,\nthat is needed by both alsa-seq and alsa-pcm.";
      buildType = "Simple";
    };
    components = {
      "alsa-core" = {
        depends  = [
          (hsPkgs.extensible-exceptions)
          (hsPkgs.base)
        ];
        libs = [ (pkgs.asound) ];
      };
    };
  }