{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pragmatic-show"; version = "0.1.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsagemue \$ uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/pragmatic-show";
      url = "";
      synopsis = "Alternative Show class that gives shorter view if possible.";
      description = "The standard 'Show' class is handy for quickly viewing any Haskell\nvalues without having to think about formatting. However, it often\nproduces needlessly clunky string representations, which are difficult\nto parse by eye. This package offers a drop-in replacement which\nattempts to keep the representation as short as possible.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector-space)
            (hsPkgs.pragmatic-show)
            ];
          };
        };
      };
    }