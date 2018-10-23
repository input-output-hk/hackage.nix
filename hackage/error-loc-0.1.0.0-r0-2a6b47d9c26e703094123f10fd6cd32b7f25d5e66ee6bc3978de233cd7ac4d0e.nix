{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "error-loc";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/error-loc";
      url = "";
      synopsis = "An error replacement with call-site metadata.";
      description = "An error replacement with call-site metadata.";
      buildType = "Simple";
    };
    components = {
      "error-loc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }