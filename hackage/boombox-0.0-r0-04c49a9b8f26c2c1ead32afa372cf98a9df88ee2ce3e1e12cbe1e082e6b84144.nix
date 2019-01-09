{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boombox"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/boombox";
      url = "";
      synopsis = "Chronokinetic stream sources and incremental consumers";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          ];
        };
      };
    }