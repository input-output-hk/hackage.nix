{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cmdlib";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai";
      homepage = "";
      url = "";
      synopsis = "a library for command line parsing & online help";
      description = "An alternative to cmdargs, based on getopt. Comes with a powerful\nattribute system. Supports complex interfaces with many options\nand commands, with option & command grouping, while at the same\ntime keeping simple things simple.";
      buildType = "Simple";
    };
    components = {
      "cmdlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.split)
        ];
      };
      exes = {
        "cmdlib-test" = {};
        "cmdlib-rectest" = {};
      };
    };
  }