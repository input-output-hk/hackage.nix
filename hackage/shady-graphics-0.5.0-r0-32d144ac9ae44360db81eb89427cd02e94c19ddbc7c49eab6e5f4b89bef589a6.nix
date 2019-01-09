{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "shady-graphics"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) by Conal Elliott 2009-2011";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/shady";
      url = "http://conal.net/repos/shady-graphics";
      synopsis = "Functional GPU programming - DSEL & compiler";
      description = "Compile functional specifications for GPU execution.\nSee also shady-render, shady-tv, and shady-examples\n\nCopyright 2009-2011 by Conal Elliott; GNU AGPLv3 license (see COPYING).\nThis license is a place-holder.  Let me know if you'd like other terms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.wl-pprint)
          (hsPkgs.applicative-numbers)
          (hsPkgs.vector-space)
          (hsPkgs.TypeCompose)
          (hsPkgs.MemoTrie)
          (hsPkgs.ty)
          (hsPkgs.data-treify)
          (hsPkgs.Boolean)
          (hsPkgs.shady-gen)
          ];
        };
      };
    }