{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { statsd = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hunt-server";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
      maintainer = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
      author = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
      homepage = "http://github.com/hunt-framework";
      url = "";
      synopsis = "A search and indexing engine server.";
      description = "Standalone search server based on the Hunt searchengine.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hunt-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hamlet)
            (hsPkgs.hunt-searchengine)
            (hsPkgs.hslogger)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.scotty)
            (hsPkgs.shakespeare-js)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
            (hsPkgs.cmdargs)
            (hsPkgs.ekg-core)
          ] ++ pkgs.lib.optional (flags.statsd) (hsPkgs.ekg-statsd);
        };
      };
    };
  }