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
        name = "sws";
        version = "0.4.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2017 Derek Elkins";
      maintainer = "derek.a.elkins@gmail.com";
      author = "Derek Elkins";
      homepage = "";
      url = "";
      synopsis = "A simple web server for serving directories.";
      description = "The main drivers for this application were Windows (and Linux) support,\nsecurity, and to a lesser extent performance.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sws" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hourglass)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
          ];
        };
      };
    };
  }