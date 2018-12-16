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
      specVersion = "1.2";
      identifier = {
        name = "hnn";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "";
      url = "";
      synopsis = "A minimal Haskell Neural Network Library";
      description = "hnn provides minimal types and functions to create, train and use feed forward neural networks <http://www.haskell.org/haskellwiki/HNN>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.uvector)
          (hsPkgs.base)
        ];
      };
    };
  }