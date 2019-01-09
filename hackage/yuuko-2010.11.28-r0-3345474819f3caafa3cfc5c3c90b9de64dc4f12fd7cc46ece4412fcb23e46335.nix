{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "yuuko"; version = "2010.11.28"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/yuuko";
      url = "";
      synopsis = "A transcendental HTML parser gently wrapping the HXT library";
      description = "Parse without thinking ...\n\nyuuko \"//body\" \"<html><body>hi</body></html>\"\n\n> [\"hi\"]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.network)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.curl)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "yuuko" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.curl)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }