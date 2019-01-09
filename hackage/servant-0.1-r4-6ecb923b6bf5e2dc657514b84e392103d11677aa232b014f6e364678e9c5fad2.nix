{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora SEA";
      maintainer = "alp@zalora.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/zalora/servant";
      url = "";
      synopsis = "A library to generate REST-style webservices on top of scotty, handling all the boilerplate for you";
      description = "An abstraction for 'Resource's that can support any number\nof operations, which will be tagged at the type-level.\n\nThis package however does provide standard /REST-y/ operations\n('Servant.Prelude.Add', 'Servant.Prelude.Delete', 'Servant.Prelude.ListAll'\n, 'Servant.Prelude.Update' and 'Servant.Prelude.View') and lets you define your\nown.\n\nYou can then actually make a service out of a 'Servant.Resource.Resource' description\nusing any backend you like (we currently only provide a\n<http://hackage.haskell.org/package/scotty scotty> backend in\nthe /servant-scotty/ package).\n\nHead to the <https://github.com/zalora/servant#servant README> for information and links to documentation.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }