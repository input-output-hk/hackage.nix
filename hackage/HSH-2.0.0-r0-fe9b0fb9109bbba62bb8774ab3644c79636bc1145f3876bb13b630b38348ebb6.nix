{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "HSH";
        version = "2.0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2006-2009 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hsh";
      url = "";
      synopsis = "Library to mix shell scripting with Haskell programs";
      description = "HSH is designed to let you mix and match shell expressions with\nHaskell programs. With HSH, it is possible to easily run shell\ncommands, capture their output or provide their input, and pipe them\nto and from other shell commands and arbitrary Haskell functions at will.\nCategory: System";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.MissingH)
          (hsPkgs.hslogger)
          (hsPkgs.filepath)
          (hsPkgs.regex-base)
          (hsPkgs.regex-posix)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) ([
            (hsPkgs.base)
            (hsPkgs.utf8-string)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.filepath)
            (hsPkgs.regex-base)
            (hsPkgs.regex-posix)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.testpack)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix));
        };
      };
    };
  }