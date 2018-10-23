{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "filesystem-conduit";
        version = "1.0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Use system-filepath data types with conduits. (deprecated)";
      description = "Please use conduit-combinators, which provides an enhanced version of traverse (sourceDirectoryDeep).";
      buildType = "Simple";
    };
    components = {
      "filesystem-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.conduit)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.transformers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }