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
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-token-acid";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "NCrashed";
      homepage = "https://github.com/ncrashed/servant-auth-token#readme";
      url = "";
      synopsis = "Acid-state backend for servant-auth-token server";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "servant-auth-token-acid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.aeson-injector)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.safecopy)
          (hsPkgs.servant-auth-token)
          (hsPkgs.servant-auth-token-api)
          (hsPkgs.servant-server)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.uuid)
        ];
      };
    };
  }