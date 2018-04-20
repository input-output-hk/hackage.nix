{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "compact-string-fix";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Hannan <tony@10gen.com>";
        author = "Twan van Laarhoven";
        homepage = "http://twan.home.fmf.nl/compact-string/";
        url = "";
        synopsis = "Same as compact-string except with a small fix so it builds on ghc-6.12";
        description = "Fast, packed, strict strings with a list interface.\nBased on \"Data.ByteString\".\nMultiple encodings are supported.\nThis is the same package as compact-string-0.3.1 except for a small fix to work with the new Exception library. Once Twan updates that package, this package will be deprecated.";
        buildType = "Simple";
      };
      components = {
        compact-string-fix = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }