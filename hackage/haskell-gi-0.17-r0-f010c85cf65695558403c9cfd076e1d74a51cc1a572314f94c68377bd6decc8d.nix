{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskell-gi"; version = "0.17"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson,\nIñaki García Etxebarria,\nJonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Generate Haskell bindings for GObject Introspection capable libraries";
      description = "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably\nGtk+, but many other libraries in the GObject ecosystem provide introspection data too.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.file-embed)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.bytestring)
          (hsPkgs.xdg-basedir)
          (hsPkgs.xml-conduit)
          (hsPkgs.text)
          ];
        pkgconfig = [
          (pkgconfPkgs.gobject-introspection-1.0)
          (pkgconfPkgs.gobject-2.0)
          ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      exes = {
        "haskell-gi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.pretty-show)
            (hsPkgs.haskell-gi)
            (hsPkgs.haskell-gi-base)
            ];
          };
        };
      };
    }