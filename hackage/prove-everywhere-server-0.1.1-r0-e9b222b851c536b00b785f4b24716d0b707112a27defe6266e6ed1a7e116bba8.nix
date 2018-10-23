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
        name = "prove-everywhere-server";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amutake.s@gmail.com";
      author = "Shohei Yasutake";
      homepage = "https://github.com/prove-everywhere/server";
      url = "";
      synopsis = "The server for ProveEverywhere";
      description = "This is the server for ProveEverywhere project.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "prove-everywhere-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.http-types)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.parsers)
            (hsPkgs.parsec)
            (hsPkgs.safe)
            (hsPkgs.time)
            (hsPkgs.case-insensitive)
          ];
        };
      };
    };
  }