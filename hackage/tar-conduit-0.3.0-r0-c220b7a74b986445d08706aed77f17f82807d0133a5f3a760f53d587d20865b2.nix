{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24.0.0";
      identifier = {
        name = "tar-conduit";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com, bartavelle@gmail.com, alexey@kuleshevi.ch";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/tar-conduit#readme";
      url = "";
      synopsis = "Extract and create tar files using conduit for streaming";
      description = "Please see README.md. This is just filler to avoid warnings.";
      buildType = "Simple";
    };
    components = {
      "tar-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
        ] ++ (if system.isWindows
          then [
            (hsPkgs.time)
            (hsPkgs.unix-compat)
          ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.tar-conduit)
          ];
        };
        "space" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.tar-conduit)
            (hsPkgs.weigh)
          ];
        };
      };
      benchmarks = {
        "time" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.tar-conduit)
          ];
        };
      };
    };
  }