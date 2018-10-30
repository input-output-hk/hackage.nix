{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { monotrav1 = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conduit-combinators";
        version = "1.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "Commonly used conduit functions, for both chunked and unchunked data";
      description = "See docs and README at <http://www.stackage.org/package/conduit-combinators>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.filepath)
          (hsPkgs.monad-control)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.vector)
          (hsPkgs.void)
        ] ++ [
          (hsPkgs.chunked-data)
          (hsPkgs.mono-traversable)
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.chunked-data)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.safe)
            (hsPkgs.silently)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }