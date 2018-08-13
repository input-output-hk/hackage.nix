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
      specVersion = "1.10";
      identifier = {
        name = "toxiproxy-haskell";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Jake Pittis";
      maintainer = "jakepittis@gmail.com";
      author = "Jake Pittis";
      homepage = "https://github.com/jpittis/toxiproxy-haskell#readme";
      url = "";
      synopsis = "Client library for Toxiproxy: a TCP failure testing proxy.";
      description = "Please see the README on Github at <https://github.com/jpittis/toxiproxy-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "toxiproxy-haskell" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
        ];
      };
      tests = {
        "toxiproxy-haskell-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.process)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.silently)
            (hsPkgs.time)
            (hsPkgs.toxiproxy-haskell)
          ];
        };
      };
    };
  }