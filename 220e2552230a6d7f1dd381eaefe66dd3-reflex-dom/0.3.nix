{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "reflex-dom";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Web Apps with Reflex";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine";
      buildType = "Simple";
    };
    components = {
      "reflex-dom" = {
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
          (hsPkgs.ghcjs-dom)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.exception-transformers)
          (hsPkgs.directory)
          (hsPkgs.dependent-sum-template)
          (hsPkgs.bifunctors)
        ] ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.ghcjs-base) ]
          else [
            (hsPkgs.glib)
            (hsPkgs.gtk3)
            (hsPkgs.webkitgtk3)
            (hsPkgs.webkitgtk3-javascriptcore)
            (hsPkgs.raw-strings-qq)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix));
      };
    };
  }