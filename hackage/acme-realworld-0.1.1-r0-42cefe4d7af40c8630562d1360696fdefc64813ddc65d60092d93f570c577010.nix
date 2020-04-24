{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "acme-realworld"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2011";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Primitives for manipulating the state of the universe";
      description = "GHC represents an IO action internally as a function from one state of the\nworld to the next:\n\n>State# RealWorld -> (# State# RealWorld, a #)\n\nThis module provides a very useful capability stemming directly from this\nrepresentation: the ability to save the current state of the universe and\nrestore it later.  This provides a way to \\\"undo\\\" certain types of side\neffects in the IO monad:\n\n>import Acme.Missiles\n>import Acme.RealWorld\n>\n>main :: IO ()\n>main = do\n>    -- Save the current state of the universe\n>    world_as_we_know_it <- getWorld\n>\n>    -- Cause serious international side effects\n>    launchMissiles\n>\n>    -- After realizing that was a terrible, terrible mistake, restore the\n>    -- pre-war state of the universe.\n>    putWorld world_as_we_know_it";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }