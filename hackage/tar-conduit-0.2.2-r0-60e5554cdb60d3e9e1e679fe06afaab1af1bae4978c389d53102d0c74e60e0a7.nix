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
      specVersion = "1.10";
      identifier = {
        name = "tar-conduit";
        version = "0.2.2";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-combinators)
          (hsPkgs.filepath)
          (hsPkgs.text)
        ] ++ (if system.isWindows
          then [
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.unix-compat)
          ]
          else [
            (hsPkgs.directory)
            (hsPkgs.safe-exceptions)
            (hsPkgs.unix)
          ]);
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.tar-conduit)
          ];
        };
        "space" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.weigh)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.tar-conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit)
          ];
        };
      };
      benchmarks = {
        "time" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.tar-conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit)
          ];
        };
      };
    };
  }