{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lipsum-gen"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter@insella.se";
      author = "Peter Holm";
      homepage = "";
      url = "";
      synopsis = "Generators for random sequences of English-like nonsense\ntext.";
      description = "The generators in this package are based on syllable\nstatistics from ~44000 English words.\nThe words have been split into syllables, which are\ncategorized into initials, intermediates, and finals.\nSingle-syllable words have been removed.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
      };
    }