{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hub";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan, 2011";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan <chris@chrisdornan.com>";
      homepage = "https://github.com/cdornan/hub";
      url = "";
      synopsis = "A utility for multiplexing multiple GHC installations";
      description = "This package provides a utility for multiplexing multiple\nGHC and Haskell Platform installations, the installation\nbeing selected by configuraton file or environment\nvariable.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hub" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hexpat)
            (hsPkgs.regex-compat)
            (hsPkgs.containers)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }