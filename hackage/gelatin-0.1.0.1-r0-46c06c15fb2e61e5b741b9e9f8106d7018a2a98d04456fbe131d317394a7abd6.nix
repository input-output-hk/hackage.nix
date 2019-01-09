{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "gelatin"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin";
      url = "";
      synopsis = "A graphics description language.";
      description = "An EDSL for describing pictures and scenes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gelatin)
            (hsPkgs.linear)
            (hsPkgs.vector)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }