{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "moonshine"; version = "2.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2014";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/moonshine";
      url = "";
      synopsis = "A web service framework for Haskell, similar in purpose to dropwizard.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.canteven-config)
          (hsPkgs.ekg)
          (hsPkgs.ekg-core)
          (hsPkgs.hslogger)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
          ];
        };
      };
    }