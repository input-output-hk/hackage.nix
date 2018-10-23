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
        name = "http-pony-transformer-case-insensitive";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nfjinjing@gmail.com";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/http-pony-transformer-case-insensitive";
      url = "";
      synopsis = "Tag http headers as case insensitive";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-pony-transformer-case-insensitive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.lens)
          (hsPkgs.case-insensitive)
        ];
      };
    };
  }