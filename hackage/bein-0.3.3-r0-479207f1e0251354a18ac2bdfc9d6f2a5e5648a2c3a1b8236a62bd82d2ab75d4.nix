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
      specVersion = "1.6";
      identifier = {
        name = "bein";
        version = "0.3.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Fred Ross";
      homepage = "";
      url = "";
      synopsis = "Bein is a provenance and workflow management system for bioinformatics.";
      description = "To avoid having thousands of files produced in a random way from a bunch of scripts, as is typically the case for a bioinformaticist, Bein keeps track of scripts, and their executions on various inputs.  It provides a web front end, and will integrate with LSF clusters.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "beinctl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.process)
            (hsPkgs.happstack-util)
          ];
        };
        "beind" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.process)
            (hsPkgs.hdaemonize)
            (hsPkgs.hsyslog)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.convertible)
            (hsPkgs.stm)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
          ];
        };
        "beinclient" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
          ];
        };
        "beinminion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.hsyslog)
            (hsPkgs.parsec)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.stm)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
        "beinhttpd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.unix)
            (hsPkgs.stm)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.hsyslog)
            (hsPkgs.hdaemonize)
            (hsPkgs.happstack-server)
            (hsPkgs.Crypto)
            (hsPkgs.happstack-util)
            (hsPkgs.containers)
            (hsPkgs.xhtml)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }