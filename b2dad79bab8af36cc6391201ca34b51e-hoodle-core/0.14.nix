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
      specVersion = "1.8";
      identifier = {
        name = "hoodle-core";
        version = "0.14";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "Core library for hoodle";
      description = "Hoodle is a pen notetaking program written in haskell.\nhoodle-core is the core library written in haskell and\nusing gtk2hs";
      buildType = "Custom";
    };
    components = {
      "hoodle-core" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cairo)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.configurator)
          (hsPkgs.coroutine-object)
          (hsPkgs.dbus)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.gd)
          (hsPkgs.gtk)
          (hsPkgs.hoodle-builder)
          (hsPkgs.hoodle-parser)
          (hsPkgs.hoodle-render)
          (hsPkgs.hoodle-types)
          (hsPkgs.lens)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-info)
          (hsPkgs.network-simple)
          (hsPkgs.old-locale)
          (hsPkgs.pango)
          (hsPkgs.poppler)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.stm)
          (hsPkgs.strict)
          (hsPkgs.svgcairo)
          (hsPkgs.system-filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-free)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.xournal-parser)
        ];
        libs = [
          (pkgs.X11)
          (pkgs.Xi)
          (pkgs.dl)
          (pkgs.pthread)
        ];
      };
    };
  }