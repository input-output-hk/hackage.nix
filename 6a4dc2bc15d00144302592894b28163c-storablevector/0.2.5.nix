{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      separatesyb = true;
      functorinstance = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "storablevector";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
        author = "Spencer Janssen <sjanssen@cse.unl.edu>, Henning Thielemann <storablevector@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
        url = "";
        synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
        description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@ but can be used for every 'Foreign.Storable.Storable' type.\nSee also packages\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/vector>,\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/uvector>\nwith a similar intention.\n\nWe do not provide advanced fusion optimization,\nsince especially for lazy vectors\nthis would either be incorrect or not applicable.\nFor fusion see <http://hackage.haskell.org/cgi-bin/hackage-scripts/package/storablevector-streamfusion>.";
        buildType = "Simple";
      };
      components = {
        storablevector = {
          depends  = [
            hsPkgs.non-negative
            hsPkgs.utility-ht
            hsPkgs.transformers
          ] ++ (if compiler.isJhc
            then [
              hsPkgs.statethread
              hsPkgs.base
            ]
            else if _flags.splitbase
              then if _flags.separatesyb
                then [ hsPkgs.base hsPkgs.syb ]
                else [ hsPkgs.base ]
              else [ hsPkgs.base ]);
        };
        exes = {
          test = {
            depends  = pkgs.lib.optionals _flags.buildtests ([
              hsPkgs.bytestring
              hsPkgs.QuickCheck
            ] ++ (if _flags.splitbase
              then [ hsPkgs.random ] ++ [
                hsPkgs.base
              ]
              else [ hsPkgs.base ]));
          };
          speedtest = {
            depends  = pkgs.lib.optionals _flags.buildtests ([
              hsPkgs.sample-frame
              hsPkgs.deepseq
            ] ++ [ hsPkgs.base ]);
          };
          speedpointer = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }