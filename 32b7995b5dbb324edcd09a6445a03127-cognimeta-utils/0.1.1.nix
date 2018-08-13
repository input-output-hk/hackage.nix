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
        name = "cognimeta-utils";
        version = "0.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2010-2012 Cognimeta Inc.";
      maintainer = "Patrick Premont <ppremont@cognimeta.com>";
      author = "Patrick Premont for Cognimeta Inc.";
      homepage = "https://github.com/Cognimeta/cognimeta-utils";
      url = "";
      synopsis = "Utilities for Cognimeta products (such as perdure). API may change often.";
      description = "These utilities are used by Perdure and other internal Cognimeta products.\n\nPlease do not rely on these APIs. If parts of this are of interest to you please contact\n'ppremont@cognimeta.com' and we will consider creating a cleaner separate package.";
      buildType = "Simple";
    };
    components = {
      "cognimeta-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.collections-api)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.stm)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.tagged)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-fd)
          (hsPkgs.data-lens-template)
          (hsPkgs.comonad-transformers)
          (hsPkgs.deepseq)
        ];
      };
      exes = {
        "cognimeta-utils" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.cognimeta-utils)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }