{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ridley-extras";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/iconnect/ridley/ridley-extras#readme";
      url = "";
      synopsis = "Handy metrics that doesn't belong to ridley.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.prometheus)
          (hsPkgs.shelly)
          (hsPkgs.microlens)
          (hsPkgs.ekg-prometheus-adapter)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.ridley)
        ];
      };
      tests = {
        "ridley-extras-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ridley-extras)
          ];
        };
      };
    };
  }