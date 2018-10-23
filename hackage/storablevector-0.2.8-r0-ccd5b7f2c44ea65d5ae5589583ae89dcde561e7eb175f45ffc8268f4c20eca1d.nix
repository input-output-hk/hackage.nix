{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      separatesyb = true;
      functorinstance = true;
      buildtests = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "storablevector";
        version = "0.2.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
      author = "Spencer Janssen <sjanssen@cse.unl.edu>, Henning Thielemann <storablevector@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
      url = "";
      synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
      description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@\nbut can be used for every 'Foreign.Storable.Storable' type.\nSee also package\n<http://hackage.haskell.org/package/vector>\nwith a similar intention.\n\nWe do not provide advanced fusion optimization,\nsince especially for lazy vectors\nthis would either be incorrect or not applicable.\nHowever we provide fusion with lazy lists in the package\n<http://hackage.haskell.org/package/storablevector-streamfusion>.";
      buildType = "Simple";
    };
    components = {
      "storablevector" = {
        depends  = [
          (hsPkgs.non-negative)
          (hsPkgs.utility-ht)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
        ] ++ (if compiler.isJhc && true
          then [
            (hsPkgs.statethread)
            (hsPkgs.base)
          ]
          else if flags.splitbase
            then if flags.separatesyb
              then [
                (hsPkgs.base)
                (hsPkgs.syb)
              ]
              else [ (hsPkgs.base) ]
            else [ (hsPkgs.base) ]);
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (flags.buildtests) ([
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
          ] ++ (if flags.splitbase
            then [ (hsPkgs.random) ] ++ [
              (hsPkgs.base)
            ]
            else [ (hsPkgs.base) ]));
        };
        "speedtest" = {
          depends  = pkgs.lib.optionals (flags.buildtests) ([
            (hsPkgs.sample-frame)
            (hsPkgs.deepseq)
          ] ++ [ (hsPkgs.base) ]);
        };
        "speedpointer" = {
          depends  = pkgs.lib.optional (flags.buildtests) (hsPkgs.base);
        };
      };
    };
  }