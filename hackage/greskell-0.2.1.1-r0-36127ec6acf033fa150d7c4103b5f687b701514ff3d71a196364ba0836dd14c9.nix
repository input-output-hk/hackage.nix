{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      hint-test = true;
      server-test = false;
      server-behavior-test = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "greskell";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/greskell/";
      url = "";
      synopsis = "Haskell binding for Gremlin graph query language";
      description = "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).\nSee [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.\n\nThis package is the main entry point of greskell family.\nIt re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,\nand adds some useful functions to it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.greskell-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.semigroups)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.greskell)
            (hsPkgs.greskell-core)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
          ];
        };
        "hint-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.greskell)
            (hsPkgs.hint)
          ];
        };
        "server-test-suite" = {
          depends  = pkgs.lib.optionals (flags.server-test) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.greskell)
            (hsPkgs.greskell-core)
            (hsPkgs.scientific)
            (hsPkgs.greskell-websocket)
            (hsPkgs.safe-exceptions)
          ];
        };
        "server-behavior-test-suite" = {
          depends  = pkgs.lib.optionals (flags.server-behavior-test) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.greskell)
            (hsPkgs.greskell-core)
            (hsPkgs.scientific)
            (hsPkgs.greskell-websocket)
            (hsPkgs.safe-exceptions)
          ];
        };
      };
    };
  }