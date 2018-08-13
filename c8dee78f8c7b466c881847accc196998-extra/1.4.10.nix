{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extra";
        version = "1.4.10";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2014-2016";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/extra#readme";
      url = "";
      synopsis = "Extra functions I use.";
      description = "A library of extra functions for the standard Haskell libraries. Most functions are simple additions, filling out missing functionality. A few functions are available in later versions of GHC, but this package makes them available back to GHC 7.2.\n\nThe module \"Extra\" documents all functions provided by this library. Modules such as \"Data.List.Extra\" provide extra functions over \"Data.List\" and also reexport \"Data.List\". Users are recommended to replace \"Data.List\" imports with \"Data.List.Extra\" if they need the extra functionality.";
      buildType = "Simple";
    };
    components = {
      "extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "extra-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.extra)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }