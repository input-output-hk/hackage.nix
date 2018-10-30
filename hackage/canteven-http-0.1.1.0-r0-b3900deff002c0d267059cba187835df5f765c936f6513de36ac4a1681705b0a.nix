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
      specVersion = "1.10";
      identifier = {
        name = "canteven-http";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "rick@owenssoftware.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/canteven-http";
      url = "";
      synopsis = "Utilities for HTTP programming.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.canteven-log)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uuid)
          (hsPkgs.wai)
        ];
      };
    };
  }