{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9";
      identifier = { name = "pretty-class"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox";
      author = "Lennart Augustsson";
      homepage = "https://github.com/ddssff/pretty-class";
      url = "";
      synopsis = "Pretty printing class similar to Show.";
      description = "Pretty printing class similar to Show, based on the HughesPJ\npretty printing library.  Provides the pretty printing class\nand instances for the Prelude types.  This upload replaces the\nold pretty-class package (which I believe nobody is using) with\na copy of Lennart's prettyclass package with a small change to\nits Char instance.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.pretty) ]; };
      };
    }