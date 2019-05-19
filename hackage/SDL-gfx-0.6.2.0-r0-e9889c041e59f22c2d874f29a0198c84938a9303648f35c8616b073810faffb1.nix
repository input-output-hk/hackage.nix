{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SDL-gfx"; version = "0.6.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2004-2005, 2010, Lemmih";
      maintainer = "Francesco Ariis <fa-ml@ariis.it>";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL_gfx";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.SDL) ];
        libs = [ (pkgs."SDL_gfx") ];
        };
      };
    }