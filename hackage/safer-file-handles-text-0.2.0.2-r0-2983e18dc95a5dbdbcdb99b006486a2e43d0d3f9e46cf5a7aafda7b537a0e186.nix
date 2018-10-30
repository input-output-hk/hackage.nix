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
      specVersion = "1.6";
      identifier = {
        name = "safer-file-handles-text";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2010-2011 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/safer-file-handles-text/";
      url = "";
      synopsis = "Extends safer-file-handles with Text operations";
      description = "Extends @safer-file-handles@ with @Text@ operations";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.regions)
          (hsPkgs.transformers)
          (hsPkgs.explicit-iomodes-text)
          (hsPkgs.safer-file-handles)
        ];
      };
    };
  }