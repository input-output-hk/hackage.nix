{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fusion-plugin"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Composewell Technologies";
      maintainer = "pranaysashank@composewell.com";
      author = "Pranay Sashank";
      homepage = "https://github.com/composewell/fusion-plugin";
      url = "";
      synopsis = "GHC plugin to make stream fusion more predictable.";
      description = "This plugin provides the programmer with a way to annotate certain\ntypes using a 'Fuse' pragma from the\n<https://hackage.haskell.org/package/fusion-plugin-types fusion-plugin-types>\npackage. The programmer would annotate the types that are to be\neliminated by fusion. During the simplifier phase the plugin goes\nthrough the relevant bindings and if one of these types are found\ninside a binding then that binding is marked to be inlined\nirrespective of the size.\n\nThis plugin was primarily motivated by\n<https://hackage.haskell.org/package/streamly streamly> but it can\nbe used in general.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."fusion-plugin-types" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin-types"))
          ];
        buildable = true;
        };
      };
    }