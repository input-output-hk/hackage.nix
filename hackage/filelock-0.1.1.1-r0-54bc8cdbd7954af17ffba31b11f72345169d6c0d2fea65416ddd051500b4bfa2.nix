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
        name = "filelock";
        version = "0.1.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx";
      author = "Takano Akio";
      homepage = "http://github.com/takano-akio/filelock";
      url = "";
      synopsis = "Portable interface to file locking (flock / LockFileEx)";
      description = "This package provides an interface to Windows and Unix\nfile locking functionalities.";
      buildType = "Simple";
    };
    components = {
      "filelock" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.filelock)
            (hsPkgs.process)
            (hsPkgs.async)
            (hsPkgs.base)
          ];
        };
      };
    };
  }