{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "system-fileio"; version = "0.3.16"; };
      license = "MIT";
      copyright = "";
      maintainer = "FP Complete <michael@fpcomplete.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://github.com/fpco/haskell-filesystem";
      url = "";
      synopsis = "Consistent filesystem interaction across GHC versions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.time)
          ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) (hsPkgs.directory) ]
          else [ (hsPkgs.unix) ]);
        };
      tests = {
        "filesystem_tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chell)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      };
    }