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
        name = "rollbar";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/docmunch/rollbar-haskell";
      url = "";
      synopsis = "error tracking through rollbar.com";
      description = "";
      buildType = "Simple";
    };
    components = {
      "rollbar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.network)
          (hsPkgs.basic-prelude)
          (hsPkgs.monad-control)
          (hsPkgs.http-conduit)
        ];
      };
    };
  }