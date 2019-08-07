{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "magic-tyfams"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/https://github.com/isovector/type-sets/tree/master/magic-tyfams#readme";
      url = "";
      synopsis = "Write plugins for magic type families with ease";
      description = "Please see the README on GitHub at <https://github.com/isovector/type-sets/tree/master/magic-tyfams#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-tcplugins-extra)
          (hsPkgs.syb)
          ];
        };
      };
    }