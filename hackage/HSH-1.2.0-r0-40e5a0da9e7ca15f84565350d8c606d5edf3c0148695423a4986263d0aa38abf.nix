{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HSH"; version = "1.2.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2006-2007 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hsh";
      url = "";
      synopsis = "Library to mix shell scripting with Haskell programs";
      description = "HSH is designed to let you mix and match shell expressions with\nHaskell programs. With HSH, it is possible to easily run shell\ncommands, capture their output or provide their input, and pipe them\nto/from other shell commands and arbitrary Haskell functions at will.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.MissingH)
          (hsPkgs.hslogger)
          (hsPkgs.FilePath)
          (hsPkgs.regex-base)
          (hsPkgs.regex-posix)
          ];
        };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.FilePath)
            (hsPkgs.regex-base)
            (hsPkgs.regex-posix)
            ];
          };
        };
      };
    }