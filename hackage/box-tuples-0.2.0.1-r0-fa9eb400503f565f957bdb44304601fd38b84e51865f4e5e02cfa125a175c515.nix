{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "box-tuples"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "";
      url = "";
      synopsis = "A hack to use GHC.Prim primitives in GHCi";
      description = "As of now, the GHCi interactive runtime is incapable of working on unboxed\ntuples. In particular, it is unable to fully apply any function returning an\nunboxed tuple, create a function that takes a non-nullary unboxed tuple as\nargument, or pass a non-nullary tuple to some other function. The usual\nsolution is to enable object code generation with @-fobject-code@. This\npackage serves as a workaround for the cases where @-fobject-code@ is\nundesiable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }