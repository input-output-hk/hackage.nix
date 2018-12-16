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
        name = "gopher-proxy";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "git@lukasepple.de";
      author = "sternenseemann";
      homepage = "https://github.com/sternenseemann/gopher-proxy";
      url = "";
      synopsis = "proxy gopher over http";
      description = "A simple gopher-over-http proxy to http-ify gopher spaces.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gopher-proxy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.http-types)
            (hsPkgs.lucid)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.attoparsec)
            (hsPkgs.errors)
            (hsPkgs.mime-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }