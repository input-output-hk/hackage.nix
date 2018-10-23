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
        name = "request-monad";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Hulihan <hulihan.tom159@gmail.com>";
      author = "Tom Hulihan";
      homepage = "http://github.com/nahiluhmot/request-monad";
      url = "";
      synopsis = "A transformer for generic requests";
      description = "An MTL-style monad that can be used to perform requests. Using RequestT\nsimplifies writing generic middleware.";
      buildType = "Simple";
    };
    components = {
      "request-monad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.free)
        ];
      };
    };
  }