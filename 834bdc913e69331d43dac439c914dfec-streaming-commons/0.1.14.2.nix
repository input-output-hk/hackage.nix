{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      use-bytestring-builder = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "streaming-commons";
        version = "0.1.14.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Emanuel Borsboom";
      homepage = "https://github.com/fpco/streaming-commons";
      url = "";
      synopsis = "Common lower-level functions needed by various streaming data libraries";
      description = "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.";
      buildType = "Simple";
    };
    components = {
      "streaming-commons" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
        ] ++ (if system.isWindows
          then [
            (hsPkgs.Win32)
            (hsPkgs.filepath)
          ]
          else [
            (hsPkgs.unix)
          ])) ++ (if _flags.use-bytestring-builder
          then [
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
          ]
          else [ (hsPkgs.bytestring) ]);
      };
      tests = {
        "test" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.streaming-commons)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.zlib)
          ] ++ (if _flags.use-bytestring-builder
            then [
              (hsPkgs.bytestring)
              (hsPkgs.bytestring-builder)
            ]
            else [
              (hsPkgs.bytestring)
            ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      benchmarks = {
        "count-chars" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
        "decode-memory-usage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
        "builder-to-bytestring-io" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.streaming-commons)
          ] ++ (if _flags.use-bytestring-builder
            then [
              (hsPkgs.bytestring)
              (hsPkgs.bytestring-builder)
            ]
            else [ (hsPkgs.bytestring) ]);
        };
      };
    };
  }