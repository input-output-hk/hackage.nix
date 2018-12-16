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
      specVersion = "1.9";
      identifier = {
        name = "elm-get";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2013-2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "Tool for sharing and using Elm libraries";
      description = "elm-get lets you install, update, and publish Elm libraries";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-get" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.Elm)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.http-conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }