{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "keera-hails-reactive-gtk"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Reactive Fields for Gtk widgets";
      description = "A layer defining RVs for GTK+ fields and actions.\n\nReactive Values are an abstraction for reactive programming based on setters\nand getters with change-based propagation.\n\nThey enable easy communication/synchronization rules via Reactive Rules\n(RRs), which can keep two type-compatible RVs in sync directionally or\nbidirectionally.\n\nThis library provides operations to turn GTK+ object properties and\nfields into RVs, so that they can be used to create reactive user\ninterfaces with minimal effort.\n\nFor details, please see the paper \"Bridging the GUI Gap with Reactive Values\nand Relations\", by Ivan Perez and Henrik Nilsson at Haskell Symposium 2015.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.gtk-helpers)
          (hsPkgs.keera-hails-reactivevalues)
          (hsPkgs.cairo)
          ];
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            ];
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            ];
          };
        };
      };
    }