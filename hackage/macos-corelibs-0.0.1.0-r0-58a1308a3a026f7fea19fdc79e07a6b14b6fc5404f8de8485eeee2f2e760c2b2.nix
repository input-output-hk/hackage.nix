{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "macos-corelibs";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Filippo Sestini";
      maintainer = "sestini.filippo@gmail.com";
      author = "Filippo Sestini";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to C-based Mac OS SDK frameworks";
      description = "Type-safe Haskell bindings to C-based frameworks of the Apple\nMac OS SDK, including CoreFoundation, CoreGraphics, and Carbon\nAccessibility APIs. Please see the README on Github for more\ninformation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.managed)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
        ];
        frameworks = [
          (pkgs."Carbon")
          (pkgs."Cocoa")
        ];
      };
    };
  }