{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      example = false;
      test-client = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "react-flux";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Lenz <wuzzeb@gmail.com>";
      author = "John Lenz <wuzzeb@gmail.com>";
      homepage = "https://bitbucket.org/wuzzeb/react-flux";
      url = "";
      synopsis = "A binding to React based on the Flux application architecture for GHCJS";
      description = "";
      buildType = "Simple";
    };
    components = {
      "react-flux" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
      };
      exes = {
        "todo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.react-flux)
            (hsPkgs.deepseq)
          ];
        };
        "todo-node" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.react-flux)
            (hsPkgs.deepseq)
            (hsPkgs.text)
          ];
        };
        "purecss-side-menu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.react-flux)
            (hsPkgs.deepseq)
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
        };
        "test-client-13" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.react-flux)
            (hsPkgs.time)
            (hsPkgs.deepseq)
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
        };
        "test-client-14" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.react-flux)
            (hsPkgs.time)
            (hsPkgs.deepseq)
            (hsPkgs.aeson)
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
        };
        "route-example" = {
          depends  = pkgs.lib.optionals (_flags.example) [
            (hsPkgs.base)
            (hsPkgs.react-flux)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.web-routes)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
        };
      };
    };
  }