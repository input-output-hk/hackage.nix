{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "open-browser";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold@gmail.com";
      author = "rightfold";
      homepage = "https://github.com/rightfold/open-browser";
      url = "";
      synopsis = "Open a web browser from Haskell.";
      description = "Open a web browser from Haskell.\nCurrently BSD, Linux, OS X and Windows are supported.";
      buildType = "Simple";
    };
    components = {
      "open-browser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.open-browser)
          ];
        };
      };
    };
  }