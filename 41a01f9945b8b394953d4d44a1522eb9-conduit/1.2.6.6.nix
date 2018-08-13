{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "conduit";
        version = "1.2.6.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Streaming data processing library.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.\n\n@conduit@ is a solution to the streaming data problem, allowing for production, transformation, and consumption of streams of data in constant memory. It is an alternative to lazy I\\/O which guarantees deterministic resource handling, and fits in the same general solution space as @enumerator@\\/@iteratee@ and @pipes@. For a tutorial, please visit <https://www.fpcomplete.com/user/snoyberg/library-documentation/conduit-overview>.";
      buildType = "Simple";
    };
    components = {
      "conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.resourcet)
          (hsPkgs.exceptions)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.9")) (hsPkgs.void);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.safe)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.9")) (hsPkgs.void);
        };
      };
      benchmarks = {
        "optimize-201408" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.mwc-random)
            (hsPkgs.criterion)
            (hsPkgs.kan-extensions)
          ];
        };
        "unfused" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }