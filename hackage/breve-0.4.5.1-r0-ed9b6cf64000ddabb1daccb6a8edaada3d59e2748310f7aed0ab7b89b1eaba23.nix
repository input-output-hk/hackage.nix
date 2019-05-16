{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "breve"; version = "0.4.5.1"; };
      license = "GPL-3.0-only";
      copyright = "(C) Michele Guerini Rocco 2019";
      maintainer = "rnhmjoj@inventati.org";
      author = "rnhmjoj";
      homepage = "https://maxwell.ydns.eu/git/rnhmjoj/breve";
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
            (hsPkgs.warp-tls)
            (hsPkgs.tls)
            (hsPkgs.Spock)
            (hsPkgs.Spock-core)
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