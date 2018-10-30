{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rollbar";
        version = "0.4.1";
      };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Azara <engineering@azara.io>, Jeff Taggart <jeff@jetaggart.com>, Steven MacCoun <theraccoun@gmail.com>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/azara/rollbar-haskell";
      url = "";
      synopsis = "error tracking through rollbar.com";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.network)
          (hsPkgs.basic-prelude)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.http-conduit)
        ];
      };
    };
  }