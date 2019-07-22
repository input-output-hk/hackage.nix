{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ghcprofview"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/ghcprofview-hs#readme";
      url = "";
      synopsis = "GHC .prof files viewer";
      description = "Please see the README on GitHub at <https://github.com/portnov/ghcprofview-hs#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghcprofview" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghc-prof)
            (hsPkgs.gi-gtk)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.scientific)
            (hsPkgs.text)
            ];
          };
        };
      };
    }