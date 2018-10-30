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
        name = "elm-package";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2013-2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://github.com/elm-lang/elm-package";
      url = "";
      synopsis = "Package manager for Elm libraries";
      description = "elm-package is a package manager that lets you install, update, and\npublish Elm libraries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.elm-compiler)
          (hsPkgs.filepath)
          (hsPkgs.HTTP)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.zip-archive)
        ];
      };
      exes = {
        "elm-package" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.elm-compiler)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.zip-archive)
          ];
        };
      };
      tests = {
        "unit-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.elm-compiler)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.HUnit)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }