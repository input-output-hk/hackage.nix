{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ifcxt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "http://github.com/mikeizbicki/ifcxt";
      url = "";
      synopsis = "put if statements within type constraints";
      description = "This package introduces the @ifCxt@ function,\nwhich lets your write if statements that depend on a polymorphic variable's class instances.\nFor example, we can make a version of 'show' that can be called on any type:\n\n> cxtShow :: forall a. IfCxt (Show a) => a -> String\n> cxtShow a = ifCxt (Proxy::Proxy (Show a))\n>     (show a)\n>     \"<<unshowable>>\"\nRunning this function in ghci, we get:\n\n>>> cxtShow (1 :: Int)\n\"1\"\n\n>>> cxtShow (id :: a -> a)\n\"<<unshowable>>\"\n\nSee the project webpage http://github.com/mikeizbicki/ifcxt for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      };
    }