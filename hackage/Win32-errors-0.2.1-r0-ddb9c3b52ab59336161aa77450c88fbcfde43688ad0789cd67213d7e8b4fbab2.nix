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
      specVersion = "1.16";
      identifier = {
        name = "Win32-errors";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Michael Steele, 2014";
      maintainer = "mikesteele81@gmail.com";
      author = "Michael Steele";
      homepage = "http://github.com/mikesteele81/win32-errors";
      url = "";
      synopsis = "Alternative error handling for Win32 foreign calls";
      description = "This package provides an alternative to the Win32 library's error handling\nmechanism. The goal is to provide a nearly drop-in replacement for Win32's\nerror-handling functions while offering the following benefits:\n\n* Ability to distinguish between different Win32 error codes.\n\n* Ability to catch Win32 exceptions separately from other exception types.\n\n* Ability to query for the generating function's name and standard system error massage associated with the exception.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.Win32)
        ];
      };
    };
  }