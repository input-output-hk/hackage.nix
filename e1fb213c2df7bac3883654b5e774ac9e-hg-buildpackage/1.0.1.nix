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
      specVersion = "0";
      identifier = {
        name = "hg-buildpackage";
        version = "1.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2003 - 2007 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Tools to help manage Debian packages with Mercurial";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hg-importorig" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.hslogger)
            (hsPkgs.HSH)
          ];
        };
        "hg-importdsc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.hslogger)
            (hsPkgs.HSH)
          ];
        };
        "hg-buildpackage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.hslogger)
            (hsPkgs.HSH)
          ];
        };
        "hg-markdeb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.hslogger)
            (hsPkgs.HSH)
          ];
        };
        "hgmerge-debupstream" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.hslogger)
            (hsPkgs.HSH)
          ];
        };
      };
    };
  }