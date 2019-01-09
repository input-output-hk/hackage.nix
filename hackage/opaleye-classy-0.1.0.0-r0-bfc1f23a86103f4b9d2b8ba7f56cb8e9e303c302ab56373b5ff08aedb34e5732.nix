{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opaleye-classy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ben.kolera@gmail.com";
      author = "Ben Kolera";
      homepage = "https://github.com/benkolera/opaleye-classy/tree/master";
      url = "";
      synopsis = "Opaleye wrapped up in classy MTL attire.";
      description = "Classy MTL extension of the lovely Opaleye library, which simply just wraps things up in a MonadReader , MonadError context where the config/error are constrained by Classy Lenses/Prisms rather than by concrete non-extensible types.\nMore info on this pattern can be found in George Wilson's BFPG talk:\nhttp://talks.bfpg.org/talks/2015-06-09.next_level_mtl.html\nNote: This API may not be complete. If you need other functions exported then let me know or drop in a PR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          (hsPkgs.product-profunctors)
          (hsPkgs.transformers)
          (hsPkgs.opaleye)
          ];
        };
      };
    }