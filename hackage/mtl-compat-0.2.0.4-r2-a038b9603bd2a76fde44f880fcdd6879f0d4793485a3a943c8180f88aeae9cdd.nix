{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { two-point-one = false; two-point-two = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mtl-compat"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/haskell-compat/mtl-compat";
      url = "";
      synopsis = "Backported Control.Monad.Except module from mtl";
      description = "This package backports the \"Control.Monad.Except\" module from\n@mtl@ (if using @mtl-2.2.0.1@ or earlier), which reexports the\n@ExceptT@ monad transformer and the @MonadError@ class.\n\nThis package should only be used if there is a need to use the\n@Control.Monad.Except@ module specifically. If you just want\nthe @mtl@ class instances for @ExceptT@, use\n@transformers-compat@ instead, since @mtl-compat@ does nothing\nbut reexport the instances from that package.\n\nNote that unlike how @mtl-2.2@ or later works, the\n\"Control.Monad.Except\" module defined in this package exports\nall of @ExceptT@'s monad class instances. Therefore, you may\nhave to declare @import Control.Monad.Except ()@ at the top of\nyour file to get all of the @ExceptT@ instances in scope.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if flags.two-point-one
          then [
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ]
          else if flags.two-point-two
            then [
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              ]
            else [
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              ]);
        buildable = true;
        };
      };
    }