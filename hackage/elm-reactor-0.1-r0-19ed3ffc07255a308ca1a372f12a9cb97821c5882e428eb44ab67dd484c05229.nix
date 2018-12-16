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
      specVersion = "1.8";
      identifier = {
        name = "elm-reactor";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "Interactive development tool for Elm programs";
      description = "Provides an interactive development tool that makes it easy\nto develop and debug Elm programs. It will automatically\ncompile any Elm program—independent of editor. It permits\nhot-swapping and time-traveling debugging.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-reactor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.Elm)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.HTTP)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.system-filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.websockets)
            (hsPkgs.websockets-snap)
          ];
        };
      };
    };
  }