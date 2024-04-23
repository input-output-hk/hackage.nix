{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "os-string"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Julain Ospald 2021-2023";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "https://github.com/haskell/os-string/blob/master/README.md";
      url = "";
      synopsis = "Library for manipulating Operating system strings.";
      description = "This package provides functionality for manipulating @OsString@ values, and is shipped with <https://www.haskell.org/ghc/ GHC>.\n\nVersion 1.0.0 (unlike the following versions) is a dummy package that prevents module name clashes\nbetween os-string and filepath if used together.\n\nIf you simply want the newer os-string package, make sure to depend on the newer versions:\n\n> library\n>   build-depends:\n>     os-string >= 2.0.0\n\nIf you want to default to the older filepath provided OsString modules, but allow users to switch to the newer os-string,\nyou can provide a flag like so:\n\n> flag os-string\n>   description: Use the new os-string package\n>   default: False\n>   manual: False\n>\n> library\n>   -- ...\n>   if flag(os-string)\n>     build-depends: os-string >= 2.0.0\n>   else\n>     build-depends: filepath < 1.5, os-string < 2.0.0";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  }