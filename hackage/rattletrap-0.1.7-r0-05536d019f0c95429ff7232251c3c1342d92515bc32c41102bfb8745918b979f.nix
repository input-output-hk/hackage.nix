{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rattletrap"; version = "0.1.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/rattletrap#readme";
      url = "";
      synopsis = "Parse and generate Rocket League replays.";
      description = "Rattletrap parses and generates Rocket League replays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.regex-compat)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "rattletrap" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.rattletrap)
            (hsPkgs.template-haskell)
            ];
          };
        };
      tests = {
        "lint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.rattletrap)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }