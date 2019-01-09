{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "text-binary"; version = "0.2.1.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/text-binary";
      url = "";
      synopsis = "Binary instances for text types";
      description = "A compatibility layer providing Binary instances for strict\nand lazy text types for versions older than 1.2.1 of\n<https://hackage.haskell.org/package/text>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.binary) ];
        };
      };
    }