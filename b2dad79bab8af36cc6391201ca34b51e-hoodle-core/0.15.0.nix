{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dyre = false;
      gtk3 = false;
      hub = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hoodle-core";
        version = "0.15.0";
      };
      license = "BSD-3-Clause";
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
        depends  = (([
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cairo)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.configurator)
          (hsPkgs.coroutine-object)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.gd)
          (hsPkgs.handa-gdata)
          (hsPkgs.hoodle-builder)
          (hsPkgs.hoodle-parser)
          (hsPkgs.hoodle-publish)
          (hsPkgs.hoodle-render)
          (hsPkgs.hoodle-types)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
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
          (hsPkgs.websockets)
          (hsPkgs.xournal-parser)
        ] ++ pkgs.lib.optional (_flags.dyre) (hsPkgs.dyre)) ++ (if _flags.gtk3
          then [ (hsPkgs.gtk3) ]
          else [
            (hsPkgs.gtk)
          ])) ++ pkgs.lib.optionals (_flags.hub) [
          (hsPkgs.dbus)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.network-info)
          (hsPkgs.network-simple)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.resourcet)
        ];
        libs = [
          (pkgs."X11")
          (pkgs."Xi")
          (pkgs."dl")
          (pkgs."pthread")
        ];
      };
    };
  }