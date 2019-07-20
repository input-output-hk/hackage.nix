{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { server-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "A graph database middleware to maintain a time-varying graph.";
      description = "A graph database middleware to maintain a time-varying graph. See the [project README](https://github.com/debug-ito/net-spider) for detail.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.greskell-websocket)
          (hsPkgs.greskell)
          (hsPkgs.aeson)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.data-interval)
          (hsPkgs.extended-reals)
          (hsPkgs.monad-logger)
          (hsPkgs.scientific)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.net-spider)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            ];
          };
        "server-test-suite" = {
          depends = (pkgs.lib).optionals (flags.server-test) [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.net-spider)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.greskell-websocket)
            (hsPkgs.greskell)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.hashable)
            (hsPkgs.time)
            (hsPkgs.safe-exceptions)
            (hsPkgs.hspec-need-env)
            ];
          };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            ];
          };
        };
      };
    }