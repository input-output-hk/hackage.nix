{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fusion-plugin"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Composewell Technologies";
      maintainer = "pranaysashank@composewell.com";
      author = "Pranay Sashank";
      homepage = "https://github.com/composewell/fusion-plugin";
      url = "";
      synopsis = "GHC plugin to make stream fusion more predictable.";
      description = "This plugin provides the programmer with a way to annotate certain\ntypes using a 'Fuse' pragma. The programmer would annotate the types\nthat are to be eliminated by fusion. During the simplifier phase the\nplugin goes through the relevant bindings and if one of these types\nare found inside a binding then that binding is marked to be inlined\nirrespective of the size.\n\nThis plugin was primarily motivated by\n<https://hackage.haskell.org/package/streamly streamly> but it can\nbe used in general.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }