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
        name = "elm-server";
        version = "0.11.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "Server for developing Elm projects";
      description = "Provides a standalone Snap server that serves static files.\nFor Elm files, it recompiles them and serves them as HTML,\nso you can just refresh to see the new version.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Elm)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }