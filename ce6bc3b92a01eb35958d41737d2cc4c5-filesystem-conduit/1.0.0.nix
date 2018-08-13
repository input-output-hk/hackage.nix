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
      specVersion = "1.8";
      identifier = {
        name = "filesystem-conduit";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Use system-filepath data types with conduits.";
      description = "Provides ability to traverse a folder structure efficiently, as well as convenience wrappers for reading from and writing to files.";
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