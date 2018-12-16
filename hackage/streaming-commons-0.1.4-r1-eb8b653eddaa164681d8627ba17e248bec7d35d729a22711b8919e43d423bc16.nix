{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "streaming-commons";
        version = "0.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Gabriel Gonzalez";
      homepage = "https://github.com/fpco/streaming-commons";
      url = "";
      synopsis = "Common lower-level functions needed by various streaming data libraries";
      description = "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "test" = {
          depends = [
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
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      benchmarks = {
        "count-chars" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
        "decode-memory-usage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
    };
  }