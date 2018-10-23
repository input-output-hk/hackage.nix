{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      example = false;
      test-client = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "react-flux";
        version = "0.9.3";
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
        "test-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.react-flux)
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
        };
        "route-example" = {
          depends  = pkgs.lib.optionals (flags.example) [
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