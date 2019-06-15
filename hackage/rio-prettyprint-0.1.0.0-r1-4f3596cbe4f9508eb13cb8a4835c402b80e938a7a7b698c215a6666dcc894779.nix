{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "rio-prettyprint"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/stack#readme";
      url = "";
      synopsis = "Pretty-printing for RIO";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.annotated-wl-pprint)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.rio)
          (hsPkgs.text)
          ];
        };
      };
    }