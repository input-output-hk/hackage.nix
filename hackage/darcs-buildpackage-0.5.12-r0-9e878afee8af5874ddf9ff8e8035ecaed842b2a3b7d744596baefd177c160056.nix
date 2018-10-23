{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "darcs-buildpackage";
        version = "0.5.12";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2003 - 2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Tools to help manage Debian packages with Darcs";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "darcs-buildpackage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
        "dbp-importorig" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
        "dbp-importdsc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
        "dbp-markdeb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
        "dbp-get" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.hslogger)
            (hsPkgs.ConfigFile)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }