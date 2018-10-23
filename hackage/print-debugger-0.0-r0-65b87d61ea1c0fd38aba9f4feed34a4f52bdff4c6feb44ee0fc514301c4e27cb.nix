{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "print-debugger";
        version = "0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "John-Michael Reed";
      author = "John-Michael Reed";
      homepage = "https://github.com/JohnReedLOL/HaskellPrintDebugger";
      url = "";
      synopsis = "Print debugging with stack trace for Haskell (formatted for the IDE).";
      description = "Print debugging with stack trace for Haskell (formatted for the IDE). See screenshot http://i.imgur.com/KCXYHNk.png";
      buildType = "Simple";
    };
    components = {
      "print-debugger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }