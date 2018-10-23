{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "filesystem-enumerator";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin< jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>, Michael Snoyman <michael@snoyman.com>";
      homepage = "https://john-millikin.com/software/haskell-filesystem/";
      url = "";
      synopsis = "Enumerator-based API for manipulating the filesystem.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "filesystem-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.enumerator)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.transformers)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
    };
  }