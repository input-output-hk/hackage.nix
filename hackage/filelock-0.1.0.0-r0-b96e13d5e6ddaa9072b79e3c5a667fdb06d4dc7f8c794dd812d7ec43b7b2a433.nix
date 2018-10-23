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
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx";
      author = "Takano Akio";
      homepage = "http://github.com/takano-akio/filelock";
      url = "";
      synopsis = "Portable interface to file locking (flock / LockFileEx)";
      description = "";
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
    };
  }