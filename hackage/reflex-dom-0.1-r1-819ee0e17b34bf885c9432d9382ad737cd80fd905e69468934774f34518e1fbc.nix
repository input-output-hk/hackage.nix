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
      specVersion = "1.9.2";
      identifier = {
        name = "reflex-dom";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Glitch-free Functional Reactive Web Apps";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reflex)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-map)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.these)
          (hsPkgs.ref-tf)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.aeson)
          (hsPkgs.time)
        ] ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.ghcjs-base) ]
          else [
            (hsPkgs.glib)
            (hsPkgs.gtk3)
            (hsPkgs.webkitgtk3)
            (hsPkgs.webkitgtk3-javascriptcore)
          ]);
      };
    };
  }