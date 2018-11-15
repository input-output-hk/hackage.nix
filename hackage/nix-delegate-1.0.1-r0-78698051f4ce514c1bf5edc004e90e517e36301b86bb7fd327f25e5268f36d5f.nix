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
      specVersion = "1.8.0.2";
      identifier = {
        name = "nix-delegate";
        version = "1.0.1";
      };
      license = "Apache-2.0";
      copyright = "2017 Awake Networks";
      maintainer = "opensource@awakenetworks.com";
      author = "Awake Networks";
      homepage = "";
      url = "";
      synopsis = "Convenient utility for distributed Nix builds";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.neat-interpolation)
          (hsPkgs.optparse-applicative)
          (hsPkgs.foldl)
          (hsPkgs.managed)
          (hsPkgs.text)
          (hsPkgs.turtle)
        ];
      };
      exes = {
        "nix-delegate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nix-delegate)
          ];
        };
      };
    };
  }