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
      specVersion = "1.6";
      identifier = {
        name = "AC-BuildPlatform";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Detect which OS you're running on.";
      description = "This package lets you easily query various facts about the system\nthat your code is running on. Currently, it reports whether the\noperating system is \\\"Windows\\\" or \\\"Unix\\\", and also the name and\nversion of the Haskell compiler used.\n\nThis package implements lots of complicated trickery to determine\nthe build environment. Once built, other packages can query this\ninformation without needing to do complex trickery themselves.\n\nDesign assumptions:\n\n* You are using GHC, version 6.8.1 or newer.\n\n* You build this package using the Cabal-install tool. (Just doing\n@runhaskell Setup@ won't work properly.)\n\nIf these conditions are not met, the package should still /build/,\nit's just that all the compile-time constants will come back as\n'Nothing'.\n\nSee also the included @ReadMe.xhtml@ file.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }