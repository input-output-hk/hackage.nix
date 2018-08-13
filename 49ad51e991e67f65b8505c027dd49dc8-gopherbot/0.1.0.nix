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
        name = "gopherbot";
        version = "0.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2005-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Spidering robot to download files from Gopherspace";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "gopherbot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.MissingH)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC)
          ];
        };
      };
    };
  }