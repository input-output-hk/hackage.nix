{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-reflex"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "imalsogreg@gmail.com";
      author = "Greg Hale, Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "servant API generator for reflex apps";
      description = "Generate reflex-compatible client functions from servant API descriptions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.jsaddle)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom-core)
          (hsPkgs.safe)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.reflex)
            (hsPkgs.servant-reflex)
            (hsPkgs.base)
            (hsPkgs.scientific)
            (hsPkgs.servant)
            (hsPkgs.reflex-dom)
            (hsPkgs.text)
            ];
          };
        };
      };
    }