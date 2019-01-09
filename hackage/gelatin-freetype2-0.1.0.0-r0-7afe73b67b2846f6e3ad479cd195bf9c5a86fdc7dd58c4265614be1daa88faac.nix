{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gelatin-freetype2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@zyghost.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin/gelatin-freetype2#readme";
      url = "";
      synopsis = "FreeType2 based text rendering for the gelatin realtime\nrendering system.";
      description = "FreeType2 based text rendering for the gelatin realtime\nrendering system. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.gelatin)
          (hsPkgs.gelatin-gl)
          (hsPkgs.freetype2)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.either)
          ];
        };
      tests = {
        "gelatin-freetype2-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.gelatin-freetype2) ];
          };
        };
      };
    }