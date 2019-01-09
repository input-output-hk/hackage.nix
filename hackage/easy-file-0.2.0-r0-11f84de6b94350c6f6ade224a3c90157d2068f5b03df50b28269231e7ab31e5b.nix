{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "easy-file"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://github.com/kazu-yamamoto/easy-file";
      url = "";
      synopsis = "Cross-platform File handling";
      description = "Cross-platform File handling for Unix\\/Mac\\/Windows";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ] ++ (if system.isWindows
          then [
            (hsPkgs.Win32)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ]
          else [
            (hsPkgs.unix)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ]);
        };
      };
    }