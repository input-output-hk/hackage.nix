{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vcswrapper"; version = "0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "2011 Stephan Fortelny, Harald Jagenteufel";
      maintainer = "stephanfortelny at gmail.com, h.jagenteufel at gmail.com";
      author = "Stephan Fortelny, Harald Jagenteufel";
      homepage = "https://github.com/forste/haskellVCSWrapper";
      url = "";
      synopsis = "Wrapper for source code management systems";
      description = "Provides simple haskell functions to call external source code management systems.\nCurrently git and SVN are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.filepath)
          ];
        };
      exes = {
        "vcswrapper" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }