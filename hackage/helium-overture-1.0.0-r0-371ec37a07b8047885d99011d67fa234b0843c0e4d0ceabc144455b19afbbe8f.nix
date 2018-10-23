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
        name = "helium-overture";
        version = "1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "patrick@helium.com";
      author = "Patrick Thomson";
      homepage = "";
      url = "";
      synopsis = "A backwards-compatible, modern replacement for the Prelude.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "helium-overture" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.lifted-base)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.random)
        ];
      };
    };
  }