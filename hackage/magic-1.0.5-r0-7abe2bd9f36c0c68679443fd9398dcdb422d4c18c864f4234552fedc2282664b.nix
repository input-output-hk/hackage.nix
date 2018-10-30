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
      specVersion = "0";
      identifier = {
        name = "magic";
        version = "1.0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2005-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Interface to C file/magic library";
      description = "This package provides a Haskell interface to the C libmagic library.\nWith it, you can determine the type of a file by examining its contents\nrather than its name.  The Haskell interface provides a full-featured\nbinding.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."magic") ];
      };
    };
  }