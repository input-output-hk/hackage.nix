{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ascii-art-to-unicode"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Franz Thoma";
      maintainer = "f.m.thoma@googlemail.com";
      author = "Franz Thoma";
      homepage = "https://github.com/fmthoma/ascii-art-to-unicode#readme";
      url = "";
      synopsis = "ASCII Art to Unicode Box Drawing converter";
      description = "@aa2u@ converts ASCII Art box drawings to Unicode.\n\n> > aa2u\n> +-------------+\n> | Hello World |\n> +-------------+\n> ^D\n> ┌─────────────┐\n> │ Hello World │\n> └─────────────┘\n\nFor more examples see the @doctest@ suite in \"Text.AsciiArt\".";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.comonad) ]; };
      exes = {
        "aa2u" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ascii-art-to-unicode)
            (hsPkgs.strict)
            ];
          };
        };
      tests = {
        "ascii-art-to-unicode-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ascii-art-to-unicode)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }