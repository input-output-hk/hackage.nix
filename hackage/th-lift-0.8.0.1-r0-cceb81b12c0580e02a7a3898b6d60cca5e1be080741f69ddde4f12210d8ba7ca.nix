{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "th-lift"; version = "0.8.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2006 Ian Lynagh, © 2010-2018 Mathieu Boespflug";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Ian Lynagh";
      homepage = "http://github.com/mboes/th-lift";
      url = "";
      synopsis = "Derive Template Haskell's Lift class for datatypes.";
      description = "Derive Template Haskell's Lift class for datatypes using @TemplateHaskell@\n\n* <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for @template-haskell@ syntax types\n\n* <http://hackage.haskell.org/package/th-lift-instances th-lift-instances> package provides @Lift@ (compat) instances for types in @base@, @text@, @bytestring@, @vector@ etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.th-abstraction)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.th-lift)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }