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
        name = "laborantin-hs";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "lucas@dicioccio.fr";
      author = "lucas dicioccio";
      homepage = "https://github.com/lucasdicioccio/laborantin-hs";
      url = "";
      synopsis = "an experiment management framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "laborantin-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
          (hsPkgs.directory)
          (hsPkgs.random)
          (hsPkgs.hslogger)
        ];
      };
    };
  }