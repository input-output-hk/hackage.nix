{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "breve";
        version = "0.0.3.0";
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.simple)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.hashtables)
            (hsPkgs.cryptohash)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.xdg-basedir)
            (hsPkgs.tconfig)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }