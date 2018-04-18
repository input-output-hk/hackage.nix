{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "storablevector";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
        author = "Spencer Janssen <sjanssen@cse.unl.edu>";
        homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
        url = "http://code.haskell.org/storablevector";
        synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
        description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@ but can be used for every 'Foreign.Storable.Storable' type.\nSee also packages\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/vector>,\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/uvector>\nwith a similar intention.";
        buildType = "Simple";
      };
      components = {
        storablevector = {
          depends  = [ hsPkgs.mtl ] ++ [
            hsPkgs.base
          ];
        };
        exes = {
          test = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.QuickCheck
            ] ++ (if _flags.splitbase
              then [
                hsPkgs.base
                hsPkgs.random
              ]
              else [ hsPkgs.base ]);
          };
          speedtest = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }