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
        name = "breve";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2015";
      maintainer = "micheleguerinirocco@me.com";
      author = "Rnhmjoj";
      homepage = "https://github.com/rnhmjoj/breve";
      url = "";
      synopsis = "a url shortener";
      description = "Breve is a web application that provides a simple interface to\nshortening long urls creating links smaller and easier to remember.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "breve" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.Spock)
            (hsPkgs.blaze-html)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.wai-extra)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.hashtables)
            (hsPkgs.cryptohash)
            (hsPkgs.random)
            (hsPkgs.xdg-basedir)
            (hsPkgs.configurator)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }