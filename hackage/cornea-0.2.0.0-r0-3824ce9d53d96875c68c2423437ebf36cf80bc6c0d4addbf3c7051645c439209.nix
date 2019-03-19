{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cornea"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2019 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/cornea#readme";
      url = "";
      synopsis = "classy optical monadic state";
      description = "Please see the README on GitHub at <https://github.com/tek/cornea>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "cornea-unit" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.cornea)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.th-abstraction)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }