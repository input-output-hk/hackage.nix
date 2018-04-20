{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "storablevector";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
        author = "Spencer Janssen <sjanssen@cse.unl.edu>";
        homepage = "http://darcs.haskell.org/storablevector";
        url = "http://code.haskell.org/~sjanssen/storablevector";
        synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
        description = "Fast, packed, strict storable arrays with a list interface.\nThis is much like bytestring but can be used for every Storable type.";
        buildType = "Simple";
      };
      components = {
        storablevector = {
          depends  = [ hsPkgs.base ];
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
        };
      };
    }