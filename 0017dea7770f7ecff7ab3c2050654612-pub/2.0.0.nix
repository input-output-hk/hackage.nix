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
      specVersion = "1.10";
      identifier = {
        name = "pub";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
      author = "Parnell Springmeyer <parnell@digitalmentat.com>";
      homepage = "";
      url = "";
      synopsis = "Pipe stdin to a redis pub/sub channel";
      description = "`pub` is an executable for piping data from stdin to a specified\nRedis pub/sub channel.\n\nA typical use for this tool is to tail a log file, match a specific\nline with grep, and pipe it into Redis where multiple consumers can\ndo something different with each incoming log line:\n\n> tail -F /var/log/somelogfile.log | grep \"tracker.gps.parsed\" | pub loglines";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pub" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.text)
            (hsPkgs.safe)
            (hsPkgs.containers)
            (hsPkgs.hedis)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.mtl)
            (hsPkgs.system-filepath)
            (hsPkgs.groom)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
        "sub" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.text)
            (hsPkgs.safe)
            (hsPkgs.containers)
            (hsPkgs.hedis)
            (hsPkgs.mtl)
            (hsPkgs.system-filepath)
            (hsPkgs.groom)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }